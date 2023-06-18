part of 'edit_profile_screen_bloc.dart';

@freezed
class EditProfileScreenState with _$EditProfileScreenState {
  const factory EditProfileScreenState.initial({
    required String firstNameWarningText,
    required String lastNameWarningText,
    required String userNameController,
    required String dateOfBirth,
  }) = _Initial;
}
