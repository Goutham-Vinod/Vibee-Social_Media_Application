part of 'register_screen_1_bloc.dart';

@freezed
class RegisterScreen_1_State with _$RegisterScreen_1_State {
  const factory RegisterScreen_1_State.currentState({
    required bool isRegisterScreen1Validated,
    required String firstNameWarningText,
    required String lastNameWarningText,
    required String usernameWarningText,
    required String emailWarningText,
  }) = Initial;
}
