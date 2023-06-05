import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vibee/models/register_request_model.dart';
import 'package:vibee/services/api_services.dart';
import '../widgets/common_widgets.dart';
import '../widgets/terms_n_conditions.dart';
import 'otp_verification_screen.dart';

class RegisterScreen2 extends StatefulWidget {
  RegisterScreen2({
    required this.firstName,
    required this.lastName,
    required this.userName,
    required this.email,
    super.key,
  });

  final String firstName;
  final String lastName;
  final String userName;
  final String email;

  @override
  State<RegisterScreen2> createState() => _RegisterScreen2State();
}

class _RegisterScreen2State extends State<RegisterScreen2> {
  final TextEditingController phoneNumberController = TextEditingController();
  String phoneNumberWarningText = '';
  final TextEditingController passwordController = TextEditingController();
  String passwordWarningText = '';
  final TextEditingController confirmPasswordController =
      TextEditingController();
  String confirmPasswordWarningText = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundScreenColor,
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 30,
                    horizontal: 10,
                  ),
                  child: IconButton(
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 35,
                      )),
                ),
                Spacer(),
              ],
            ),
            Spacer(),
            vibeeLogo(size: 40),
            SizedBox(height: 70),
            vibeeTextFormField(
                hint: "Phone",
                textController: phoneNumberController,
                textInputType: TextInputType.number,
                prefixIcon: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 11, horizontal: 11),
                  child: GestureDetector(
                      onTap: () {
                        showSnackBar(
                          context: context,
                          message: "Our app support only indian phone numbers",
                          buttonVisibility: false,
                        );
                      },
                      child: vibeeText("+91", size: 17, color: Colors.white38)),
                  // our app support only indian phone numbers
                ),
                onChanged: () {
                  setState(() {
                    phoneNumberWarningText = '';
                  });
                }),
            Row(
              children: [
                SizedBox(width: 60),
                vibeeText(phoneNumberWarningText, color: Colors.red),
                Spacer(),
              ],
            ),
            SizedBox(height: 10),
            vibeeTextFormField(
                hint: "Password",
                isPassword: true,
                textController: passwordController,
                onChanged: () {
                  setState(() {
                    passwordWarningText = '';
                  });
                }),
            Row(
              children: [
                SizedBox(width: 60),
                vibeeText(passwordWarningText, color: Colors.red),
                Spacer(),
              ],
            ),
            SizedBox(height: 10),
            vibeeTextFormField(
                hint: "Confirm Password",
                isPassword: true,
                textController: confirmPasswordController,
                onChanged: () {
                  setState(() {
                    confirmPasswordWarningText = '';
                  });
                }),
            Row(
              children: [
                SizedBox(width: 60),
                vibeeText(confirmPasswordWarningText, color: Colors.red),
                Spacer(),
              ],
            ),
            SizedBox(height: 50),
            vibeeButton(
                content: "Sign Up",
                onPressed: () async {
                  setState(() {
                    registerUser(context);
                  });
                },
                height: 35,
                width: 300),
            SizedBox(height: 150),
            Center(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                    onTap: () => showPrivacyPolicy(context),
                    child: vibeeText('Privacy Policy')),
                GestureDetector(
                    onTap: () => showAboutUs(context),
                    child: vibeeText('About Us')),
              ],
            )),
            SizedBox(height: 30),
          ],
        )),
      ),
    );
  }

  registerUser(context) async {
    var currentUserPhoneNumber = phoneNumberController.text;
    if (validateVibeeFormField()) {
      RegisterRequestModel registerRequest = RegisterRequestModel(
          email: widget.email,
          password: passwordController.text,
          confirmPassword: confirmPasswordController.text,
          phone: '+91${phoneNumberController.text}',
          // our app support only indian phone numbers
          firstName: widget.firstName,
          lastName: widget.lastName,
          username: widget.userName);
      bool? isRegistered = await APIServices.registerUser(
          context: context, registerRequest: registerRequest);

      if (isRegistered == true) {
        navigatorPush(context: context, nextPage: OtpVerificationScreen());
        print("Registered");
      } else {
        print("Registration failed ");
        print("UserName : ${widget.userName}");
        print("Password : ${passwordController.text}");
        print("Confirm Password : ${confirmPasswordController.text}");
      }
    }
  }

  bool validateVibeeFormField() {
    bool isValidationComplete = true;

    if (phoneNumberController.text.length != 10) {
      // Our app support only indian phone numbers
      phoneNumberWarningText = "Please enter a valid phone number.";
      isValidationComplete = false;
    }

    if (confirmPasswordController.text != passwordController.text) {
      passwordWarningText = "Password and confirm password didn't match";
      confirmPasswordWarningText = "Password and confirm password didn't match";
      isValidationComplete = false;
    }

    if (passwordController.text.length < 3) {
      passwordWarningText = "Password is too short";
      isValidationComplete = false;
    }

    if (confirmPasswordController.text.isEmpty) {
      confirmPasswordWarningText = "Please enter confirm password";
      isValidationComplete = false;
    }

    if (phoneNumberController.text.isEmpty) {
      phoneNumberWarningText = "Please enter a phone number.";
      isValidationComplete = false;
    }

    if (passwordController.text.isEmpty) {
      passwordWarningText = "Please enter a password";
      isValidationComplete = false;
    }

    return isValidationComplete;
  }
}
