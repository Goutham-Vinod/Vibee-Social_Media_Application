import 'package:dartz/dartz.dart';
import 'package:vibee/application/blocs/login_screen/login_screen_bloc.dart';

class LoginScreenServices {
  static LoginScreenState loginFrontendValidation(
      {required String email, required String password}) {
    bool isValidationSuccess = true;
    String emailWarningText = '';
    String passwordWarningText = '';

    if (!isValidEmail(email)) {
      emailWarningText = "Please enter a valid email address";
      isValidationSuccess = false;
    }

    if (email.isEmpty) {
      emailWarningText = "Please enter your email address";
      isValidationSuccess = false;
    }
    if (password.isEmpty) {
      passwordWarningText = "Please enter your password";
      isValidationSuccess = false;
    }
    return LoginScreenState.currentState(
      isValidated: Some(right(isValidationSuccess)),
      emailWarningText: emailWarningText,
      passwordWarningText: passwordWarningText,
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
