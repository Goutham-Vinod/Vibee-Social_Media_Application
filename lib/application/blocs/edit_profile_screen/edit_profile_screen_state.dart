part of 'edit_profile_screen_bloc.dart';

@freezed
class EditProfileScreenState with _$EditProfileScreenState {
  const factory EditProfileScreenState.currentState({
    required bool isPageLoading,
    required bool isFrontendValidationSuccess,
    String? errorMessage,
    required bool isProfileUpdated,
    required String firstNameWarningText,
    required String lastNameWarningText,
    required String usernameWarningText,
    required String locationWarningText,
    required String emailWarningText,
    required String firstName,
    required String lastName,
    required String username,
    required DateTime dob,
    required String location,
    required String email,
    String? dpImageUrl,
  }) = CurrentState;
}
