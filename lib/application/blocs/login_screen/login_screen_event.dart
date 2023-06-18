part of 'login_screen_bloc.dart';

@freezed
class LoginScreenEvent with _$LoginScreenEvent {
  const factory LoginScreenEvent.loginUser({
    required String email,
    required String password,
  }) = LoginUser;
  const factory LoginScreenEvent.clearEmailWarningText() =
      ClearEmailWarningText;
  const factory LoginScreenEvent.clearPasswordWarningText() =
      ClearPasswordWarningText;
}
