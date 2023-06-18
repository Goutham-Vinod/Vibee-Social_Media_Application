import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/services/login_screen/frontend_validation.dart';
import 'package:vibee/infrastructure/api_services.dart';
import 'package:dartz/dartz.dart';

part 'login_screen_event.dart';
part 'login_screen_state.dart';
part 'login_screen_bloc.freezed.dart';

class LoginScreenBloc extends Bloc<LoginScreenEvent, LoginScreenState> {
  LoginScreenBloc()
      : super(const Initial(
          isValidated: None(),
          emailWarningText: '',
          passwordWarningText: '',
        )) {
// <Option<Either<ApiFailure,bool>>>  isValidated
// if right fold and bool is true then backend validation and frontend validation success
// if right fold and bool is false then frontend validation failure
// (Frontend validation error will be stored at emailWarningText and passwordWarningText)
// if left fold, then backend validation error
// (Client side error or server side error)
// (Client side error = error at api fetching try catch)
// If it is a server side error, then the error will be saved inside error message
// status code will be saved at status code

    // when login button pressed
    on<LoginUser>((event, emit) async {
      // login frontend Validation
      LoginScreenState currentState =
          LoginScreenServices.loginFrontendValidation(
              email: event.email, password: event.password);

      bool? isFrontendValidationSuccess = currentState.isValidated.fold(
        () {
          return null;
        },
        (isValidationSuccess) {
          return isValidationSuccess.fold(
            (l) {
              return null;
            },
            (isSuccess) {
              return isSuccess;
            },
          );
        },
      );

      if (isFrontendValidationSuccess == true) {
        print('Frontend validation success');
        // login Backend Validation
        Either<ApiFailure, bool> result = await APIServices.userLogin(
          email: event.email,
          password: event.password,
        );
        print('emitted as true');
        emit(result.fold(
            (failure) => state.copyWith(
                  isValidated: Some(Left(failure)),
                ),
            (success) => state.copyWith(
                  isValidated: const Some(Right(true)),
                )));
        emit(state.copyWith(isValidated: const None()));
        // this line is to Bloc listen every emit (even there's no state change)
      } else {
        print('emitted as false');
        emit(state.copyWith(
          isValidated: Some(right(false)),
          emailWarningText: currentState.emailWarningText,
          passwordWarningText: currentState.passwordWarningText,
        ));
        emit(state.copyWith(isValidated: const None()));
        // this line is to Bloc listen every emit (even there's no state change)
      }
    });

    //when Email TextField Change
    on<ClearEmailWarningText>((event, emit) {
      emit(state.copyWith(
        emailWarningText: '',
      ));
    });
    //when Password TextField Change
    on<ClearPasswordWarningText>((event, emit) {
      emit(state.copyWith(
        passwordWarningText: '',
      ));
    });
  }
}
