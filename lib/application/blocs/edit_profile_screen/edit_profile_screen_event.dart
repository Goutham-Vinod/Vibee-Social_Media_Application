part of 'edit_profile_screen_bloc.dart';

@freezed
class EditProfileScreenEvent with _$EditProfileScreenEvent {
  const factory EditProfileScreenEvent.started() = _Started;
}