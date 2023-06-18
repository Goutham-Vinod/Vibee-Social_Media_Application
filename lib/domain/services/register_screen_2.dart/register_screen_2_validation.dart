import 'package:dartz/dartz.dart';
import 'package:vibee/application/blocs/register_screen_2/register_screen_2_bloc.dart';

class RegisterScreen_2_Services {
  static RegisterScreen_2_State validateRegisterScreen2({
    required String phoneNumber,
    required String password,
    required String confirmPassword,
  }) {
    
    String phoneNumberWarningText = '';
    String passwordWarningText = '';
    String confirmPasswordWarningText = '';
    bool isFrontendValidationCompleted = true;

    if (phoneNumber.length != 10) {
      // Our app support only indian phone numbers
      phoneNumberWarningText = "Please enter a valid phone number.";
      isFrontendValidationCompleted = false;
    }

    if (confirmPassword != password) {
      passwordWarningText = "Password and confirm password didn't match";
      confirmPasswordWarningText = "Password and confirm password didn't match";
      isFrontendValidationCompleted = false;
    }

    if (password.length < 3) {
      passwordWarningText = "Password is too short";
      isFrontendValidationCompleted = false;
    }

    if (confirmPassword.isEmpty) {
      confirmPasswordWarningText = "Please enter confirm password";
      isFrontendValidationCompleted = false;
    }

    if (phoneNumber.isEmpty) {
      phoneNumberWarningText = "Please enter a phone number.";
      isFrontendValidationCompleted = false;
    }

    if (password.isEmpty) {
      passwordWarningText = "Please enter a password";
      isFrontendValidationCompleted = false;
    }
    return RegisterScreen_2_State.currentState(
      isFrontendValidationSuccess: isFrontendValidationCompleted,
      phoneNumberWarningText: phoneNumberWarningText,
      passwordWarningText: passwordWarningText,
      confirmPasswordWarningText: confirmPasswordWarningText,
      isValidationCompleted: const None(),
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
}
