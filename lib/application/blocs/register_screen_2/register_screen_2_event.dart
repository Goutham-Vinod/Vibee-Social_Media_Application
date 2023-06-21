part of 'register_screen_2_bloc.dart';

@freezed
class RegisterScreen_2_Event with _$RegisterScreen_2_Event {
  const factory RegisterScreen_2_Event.registerUser({
    required String firstName,
    required String lastName,
    required String username,
    required String email,
    required String phoneNumber,
    required String password,
    required String confirmPassword,
  }) = RegisterUser;
  const factory RegisterScreen_2_Event.clearPhoneNumberWarningText() =
      ClearPhoneNumberWarningText;
  const factory RegisterScreen_2_Event.clearPasswordWarningText() =
      ClearPasswordWarningText;
  const factory RegisterScreen_2_Event.clearConfirmPasswordWarningText() =
      ClearConfirmPasswordWarningText;
}
