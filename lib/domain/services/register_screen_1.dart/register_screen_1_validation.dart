import 'package:vibee/application/blocs/register_screen_1/register_screen_1_bloc.dart';

class RegisterScreen_1_Services {
  static RegisterScreen_1_State validateRegisterScreen1({
    required String firstName,
    required String lastName,
    required String username,
    required String email,
  }) {
    bool isValidationComplete = true;
    String firstNameWarningText = '';
    String lastNameWarningText = '';
    String usernameWarningText = '';
    String emailWarningText = '';

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

    return RegisterScreen_1_State.currentState(
      isRegisterScreen1Validated: isValidationComplete,
      firstNameWarningText: firstNameWarningText,
      lastNameWarningText: lastNameWarningText,
      usernameWarningText: usernameWarningText,
      emailWarningText: emailWarningText,
    );
  }

  static bool isValidName(String value) {
    if (value.length < 3) {
      return false;
    } else {
      return true;
    }
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
}
