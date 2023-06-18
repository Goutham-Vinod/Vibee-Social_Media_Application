part of 'register_screen_1_bloc.dart';

@freezed
class RegisterScreen_1_Event with _$RegisterScreen_1_Event {
  const factory RegisterScreen_1_Event.registerUser({
    required String firstName,
    required String lastName,
    required String username,
    required String email,
  }) = RegisterUser;
  const factory RegisterScreen_1_Event.clearFirstNameWarningText() =
      ClearFirstNameWarningText;
  const factory RegisterScreen_1_Event.clearLastNameWarningText() =
      ClearLastNameWarningText;
  const factory RegisterScreen_1_Event.clearUserNameWarningText() =
      ClearUserNameWarningText;
  const factory RegisterScreen_1_Event.clearEmailWarningText() =
      ClearEmailWarningText;
}
