import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vibee/screens/register_screen_2.dart';
import '../widgets/common_widgets.dart';
import '../widgets/terms_n_conditions.dart';

class RegisterScreen extends StatefulWidget {
  RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController firstNameController = TextEditingController();
  String firstNameWarningText = '';
  final TextEditingController lastNameController = TextEditingController();
  String lastNameWarningText = '';
  final TextEditingController usernameController = TextEditingController();
  String usernameWarningText = '';
  final TextEditingController emailController = TextEditingController();
  String emailWarningText = '';

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
            Spacer(),
            vibeeLogo(size: 40),
            SizedBox(height: 50),
            vibeeTextFormField(
                hint: "First Name",
                textController: firstNameController,
                onChanged: () {
                  setState(() {
                    firstNameWarningText = '';
                  });
                }),
            Row(
              children: [
                SizedBox(width: 60),
                vibeeText(firstNameWarningText, color: Colors.red),
                Spacer(),
              ],
            ),
            SizedBox(height: 10),
            vibeeTextFormField(
                hint: "Last Name",
                textController: lastNameController,
                onChanged: () {
                  setState(() {
                    lastNameWarningText = '';
                  });
                }),
            Row(
              children: [
                SizedBox(width: 60),
                vibeeText(lastNameWarningText, color: Colors.red),
                Spacer(),
              ],
            ),
            SizedBox(height: 10),
            vibeeTextFormField(
                hint: "Username",
                textController: usernameController,
                onChanged: () {
                  setState(() {
                    usernameWarningText = '';
                  });
                }),
            Row(
              children: [
                SizedBox(width: 60),
                vibeeText(usernameWarningText, color: Colors.red),
                Spacer(),
              ],
            ),
            SizedBox(height: 10),
            vibeeTextFormField(
                hint: "Email",
                textController: emailController,
                onChanged: () {
                  setState(() {
                    emailWarningText = '';
                  });
                }),
            Row(
              children: [
                SizedBox(width: 60),
                vibeeText(emailWarningText, color: Colors.red),
                Spacer(),
              ],
            ),
            SizedBox(height: 20),
            vibeeButton(
                content: "Continue",
                onPressed: () {
                  setState(() {
                    if (validateVibeeFormField()) {
                      navigatorPush(
                          context: context,
                          nextPage: RegisterScreen2(
                            firstName: firstNameController.text,
                            lastName: lastNameController.text,
                            email: emailController.text,
                            userName: usernameController.text,
                          ));
                    }
                  });
                },
                height: 35,
                width: 300),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {
                print("TextButton");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset("assets/images/google_logo.png",
                      height: 12, width: 12),
                  SizedBox(width: 10),
                  vibeeText("Signup with Google"),
                ],
              ),
            ),
            SizedBox(height: 50),
            TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    vibeeText("Already have an account?"),
                    Text(" Login"),
                  ],
                )),
            SizedBox(height: 10),
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

  bool validateVibeeFormField() {
    bool isValidationComplete = true;

    if (!isValidName(firstNameController.text)) {
      firstNameWarningText = "First name is too short";
      isValidationComplete = false;
    }

    if (!isValidEmail(emailController.text)) {
      emailWarningText = "Please enter a valid email";
      isValidationComplete = false;
    }

    if (!isValidName(usernameController.text)) {
      usernameWarningText = "Username is too short";
      isValidationComplete = false;
    }

    if (firstNameController.text.isEmpty) {
      firstNameWarningText = "Please enter first name";
      isValidationComplete = false;
    }

    if (lastNameController.text.isEmpty) {
      lastNameWarningText = "Please enter last name";
      isValidationComplete = false;
    }

    if (usernameController.text.isEmpty) {
      usernameWarningText = "Please enter username";
      isValidationComplete = false;
    }

    if (emailController.text.isEmpty) {
      emailWarningText = "Please enter email";
      isValidationComplete = false;
    }

    return isValidationComplete;
  }

  bool isValidName(String value) {
    if (value.length < 3) {
      return false;
    } else {
      return true;
    }
  }

  bool isValidEmail(String value) {
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
