import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_profile_screen_event.dart';
part 'edit_profile_screen_state.dart';
part 'edit_profile_screen_bloc.freezed.dart';

class EditProfileScreenBloc
    extends Bloc<EditProfileScreenEvent, EditProfileScreenState> {
  EditProfileScreenBloc()
      : super(_Initial(
            firstNameWarningText: 'First name should not be too short',
            lastNameWarningText: 'Please enter a last name',
            userNameController: 'Please enter a username.',
            dateOfBirth: 'Please enter your date of birth')) {
    on<EditProfileScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
