part of 'login_screen_bloc.dart';

@freezed
class LoginScreenState with _$LoginScreenState {
  const factory LoginScreenState.currentState({
    required Option<Either<ApiFailure, bool>> isValidated,
    required String emailWarningText,
    required String passwordWarningText,
  }) = Initial;
}
