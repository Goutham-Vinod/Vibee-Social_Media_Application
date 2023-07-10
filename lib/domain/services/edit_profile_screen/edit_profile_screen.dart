import 'package:vibee/application/blocs/edit_profile_screen/edit_profile_screen_bloc.dart';

class EditProfileScreenServices {
  static EditProfileScreenState validateEditProfileScreen({
    required String firstName,
    required String lastName,
    required String username,
    required DateTime dob,
    required String location,
    required String email,
  }) {
    bool isValidationComplete = true;
    String firstNameWarningText = '';
    String lastNameWarningText = '';
    String usernameWarningText = '';
    String emailWarningText = '';
    String locationWarningText = '';

    if (!isValidName(firstName)) {
      firstNameWarningText = "First name is too short";
      isValidationComplete = false;
    }

    if (!isValidEmail(email)) {
      emailWarningText = "Please enter a valid email";
      isValidationComplete = false;
    }

    if (!isValidName(username)) {
      usernameWarningText = "Username is too short";
      isValidationComplete = false;
    }

    if (firstName.isEmpty) {
      firstNameWarningText = "Please enter first name";
      isValidationComplete = false;
    }

    if (lastName.isEmpty) {
      lastNameWarningText = "Please enter last name";
      isValidationComplete = false;
    }

    if (username.isEmpty) {
      usernameWarningText = "Please enter username";
      isValidationComplete = false;
    }

    if (email.isEmpty) {
      emailWarningText = "Please enter email";
      isValidationComplete = false;
    }

    if (location.length < 2 && location.isNotEmpty) {
      locationWarningText = "Please check the location you entered";
      isValidationComplete = false;
    }

    return EditProfileScreenState.currentState(
      isPageLoading: false,
      isProfileUpdated: false,
      isFrontendValidationSuccess: isValidationComplete,
      firstNameWarningText: firstNameWarningText,
      lastNameWarningText: lastNameWarningText,
      usernameWarningText: usernameWarningText,
      locationWarningText: locationWarningText,
      emailWarningText: emailWarningText,
      firstName: firstName,
      lastName: lastName,
      username: username,
      dob: dob,
      location: location,
      email: email,
    );
  }

  static bool isValidEmail(String value) {
    String pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value)) {
      return false;
    } else {
      return true;
    }
  }

  static bool isValidName(String value) {
    if (value.length < 3) {
      return false;
    } else {
      return true;
    }
  }
}
