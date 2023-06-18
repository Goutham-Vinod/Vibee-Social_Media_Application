part of 'register_screen_2_bloc.dart';

@freezed
class RegisterScreen_2_State with _$RegisterScreen_2_State {
  const factory RegisterScreen_2_State.currentState({
    required Option<Either<ApiFailure, bool>> isValidationCompleted,
    required bool isFrontendValidationSuccess,
    required String phoneNumberWarningText,
    required String passwordWarningText,
    required String confirmPasswordWarningText,
  }) = Initial;
}
