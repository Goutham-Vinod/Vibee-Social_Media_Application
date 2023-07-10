part of 'edit_profile_screen_bloc.dart';

@freezed
class EditProfileScreenEvent with _$EditProfileScreenEvent {
  const factory EditProfileScreenEvent.initializeScreen() = InitializeScreen;
  const factory EditProfileScreenEvent.refreshDobUi({required DateTime dob}) =
      RefreshDobUi;
  const factory EditProfileScreenEvent.updateProfile({
    required String firstName,
    required String lastName,
    required String username,
    required DateTime dob,
    required String location,
    required String email,
  }) = UpdateProfile;
}
