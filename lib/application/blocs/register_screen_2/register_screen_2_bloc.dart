import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/application/blocs/login_screen/login_screen_bloc.dart';
import 'package:vibee/application/blocs/register_screen_1/register_screen_1_bloc.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/register/register_request_model.dart';
import 'package:vibee/domain/services/register_screen_2.dart/register_screen_2_validation.dart';
import 'package:vibee/infrastructure/api_services.dart';

part 'register_screen_2_event.dart';
part 'register_screen_2_state.dart';
part 'register_screen_2_bloc.freezed.dart';

class RegisterScreen_2_Bloc
    extends Bloc<RegisterScreen_2_Event, RegisterScreen_2_State> {
  RegisterScreen_2_Bloc()
      : super(const Initial(
          phoneNumberWarningText: '',
          passwordWarningText: '',
          confirmPasswordWarningText: '',
          isValidationCompleted: None(),
          isFrontendValidationSuccess: false,
        )) {
    on<RegisterUser>((event, emit) async {
      // login frontend Validation
      RegisterScreen_2_State currentState =
          RegisterScreen_2_Services.validateRegisterScreen2(
        phoneNumber: event.phoneNumber,
        password: event.password,
        confirmPassword: event.confirmPassword,
      );

      if (!currentState.isFrontendValidationSuccess) {
        //front end validation failure
        emit(state.copyWith(
          isValidationCompleted: Some(right(false)),
          phoneNumberWarningText: currentState.phoneNumberWarningText,
          passwordWarningText: currentState.passwordWarningText,
          confirmPasswordWarningText: currentState.confirmPasswordWarningText,
        ));
        emit(state.copyWith(isValidationCompleted: const None()));
        // this line is to Bloc listen every emit (even there's no state change)
      }

      if (currentState.isFrontendValidationSuccess) {
        print('Frontend validation success');
        //front end validation success
        // Backend Validation + Register user
        Either<ApiFailure, bool> result = await APIServices.registerUser(
            registerRequest: RegisterRequestModel(
          email: event.email,
          password: event.password,
          confirmPassword: event.confirmPassword,
          phone: '+91${event.phoneNumber}',
          firstName: event.firstName,
          lastName: event.lastName,
          username: event.username,
        ));
        print('emitted as true');
        emit(result.fold(
            (failure) => state.copyWith(
                  isValidationCompleted: Some(Left(failure)),
                ),
            (success) => state.copyWith(
                  isValidationCompleted: const Some(Right(true)),
                )));
        emit(state.copyWith(isValidationCompleted: const None()));
        // this line is to Bloc listen every emit (even there's no state change)
      }
    });
    on<ClearPasswordWarningText>((event, emit) {
      emit(state.copyWith(passwordWarningText: ''));
    });
    on<ClearPhoneNumberWarningText>((event, emit) {
      emit(state.copyWith(phoneNumberWarningText: ''));
    });
    on<ClearConfirmPasswordWarningText>((event, emit) {
      emit(state.copyWith(confirmPasswordWarningText: ''));
    });
  }
}
