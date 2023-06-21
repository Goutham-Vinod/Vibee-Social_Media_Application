import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/services/register_screen_1.dart/register_screen_1_validation.dart';
import 'package:vibee/infrastructure/api_services.dart';

part 'register_screen_1_event.dart';
part 'register_screen_1_state.dart';
part 'register_screen_1_bloc.freezed.dart';

class RegisterScreen_1_Bloc
    extends Bloc<RegisterScreen_1_Event, RegisterScreen_1_State> {
  RegisterScreen_1_Bloc()
      : super(const Initial(
          emailWarningText: '',
          firstNameWarningText: '',
          lastNameWarningText: '',
          usernameWarningText: '',
          isRegisterScreen1Validated: false,
        )) {
    // when continue button pressed
    on<RegisterUser>((event, emit) async {
      // login frontend Validation
      RegisterScreen_1_State currentState =
          RegisterScreen_1_Services.validateRegisterScreen1(
        firstName: event.firstName,
        lastName: event.lastName,
        username: event.username,
        email: event.email,
      );
      emit(currentState);
      emit(state.copyWith(isRegisterScreen1Validated: false));
      // this line is to Bloc listen every emit (even there's no state change)
    });

    //when Email TextField Change
    on<ClearEmailWarningText>((event, emit) {
      emit(state.copyWith(
        emailWarningText: '',
      ));
    });
    //when FirstName TextField Change
    on<ClearFirstNameWarningText>((event, emit) {
      emit(state.copyWith(
        firstNameWarningText: '',
      ));
    });
    //when LastName TextField Change
    on<ClearLastNameWarningText>((event, emit) {
      emit(state.copyWith(
        lastNameWarningText: '',
      ));
    });
    //when Username TextField Change
    on<ClearUserNameWarningText>((event, emit) {
      emit(state.copyWith(
        usernameWarningText: '',
      ));
    });
  }
}
