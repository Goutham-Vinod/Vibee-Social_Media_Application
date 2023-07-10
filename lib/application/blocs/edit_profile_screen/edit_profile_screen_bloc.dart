import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/services/edit_profile_screen/edit_profile_screen.dart';
import 'package:vibee/infrastructure/api_services.dart';

part 'edit_profile_screen_event.dart';
part 'edit_profile_screen_state.dart';
part 'edit_profile_screen_bloc.freezed.dart';

class EditProfileScreenBloc
    extends Bloc<EditProfileScreenEvent, EditProfileScreenState> {
  EditProfileScreenBloc()
      : super(CurrentState(
            isPageLoading: false,
            isProfileUpdated: false,
            isFrontendValidationSuccess: false,
            firstNameWarningText: '',
            lastNameWarningText: '',
            usernameWarningText: '',
            locationWarningText: '',
            emailWarningText: '',
            firstName: '',
            lastName: '',
            username: '',
            dob: DateTime.now(),
            location: '',
            email: '',
            dpImageUrl: '')) {
    on<InitializeScreen>((event, emit) async {
      emit(state.copyWith(isPageLoading: true));
      await APIServices.GetCurrentUserDetailsResponse();

      emit(state.copyWith(
        isPageLoading: false,
        firstName: CommonVariables.currentUserDetailsResponse?.firstName ?? '',
        lastName: CommonVariables.currentUserDetailsResponse?.lastName ?? '',
        username: CommonVariables.currentUserDetailsResponse?.username ?? '',
        dob: CommonVariables.currentUserDetailsResponse?.dob ?? DateTime.now(),
        location: CommonVariables.currentUserDetailsResponse?.location ?? '',
        email: CommonVariables.currentUserDetailsResponse?.email ?? '',
      ));
    });

    on<RefreshDobUi>((event, emit) {
      emit(state.copyWith(dob: event.dob));
    });

    on<UpdateProfile>((event, emit) async {
// front end validation
      EditProfileScreenState currentState =
          EditProfileScreenServices.validateEditProfileScreen(
        firstName: event.firstName,
        lastName: event.lastName,
        username: event.username,
        dob: event.dob,
        location: event.location,
        email: event.email,
      );

      emit(currentState);

      if (currentState.isFrontendValidationSuccess) {
        Either<ApiFailure, bool> result = await APIServices.editProfile(
          firstName: event.firstName,
          lastName: event.lastName,
          username: event.username,
          dob: event.dob,
          location: event.location,
          email: event.email,
        );

        result.fold((failure) {
          emit(state.copyWith(errorMessage: failure.errorMessage));
          emit(state.copyWith(errorMessage: null));
        }, (success) {
          emit(
            state.copyWith(isProfileUpdated: true, errorMessage: null),
          );
        });
      }
    });
  }
}
