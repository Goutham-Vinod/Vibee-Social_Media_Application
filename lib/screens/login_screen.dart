import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vibee/screens/home_screen.dart';
import 'package:vibee/screens/otp_verification_screen.dart';
import 'package:vibee/screens/register_screen.dart';
import 'package:vibee/services/api_services.dart';
import '../widgets/common_widgets.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailTextController = TextEditingController();

  final TextEditingController passwordTextController = TextEditingController();

  String emailWarningText = '';

  String passwordWarningText = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundScreenColor,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 130),
                SizedBox(
                  width: 300,
                  height: 500,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      vibeeLogo(size: 40),
                      SizedBox(height: 50),
                      vibeeTextFormField(
                          hint: "Email Address",
                          textController: emailTextController,
                          onChanged: () {
                            setState(() {
                              emailWarningText = '';
                            });
                          }),
                      Row(
                        children: [
                          SizedBox(width: 10),
                          vibeeText(emailWarningText, color: Colors.red),
                          Spacer(),
                        ],
                      ),
                      SizedBox(height: 10),
                      vibeeTextFormField(
                          hint: "Password",
                          textController: passwordTextController,
                          isPassword: true,
                          onChanged: () {
                            setState(() {
                              passwordWarningText = '';
                            });
                          }),
                      Row(
                        children: [
                          SizedBox(width: 10),
                          vibeeText(passwordWarningText, color: Colors.red),
                          Spacer(),
                        ],
                      ),
                      Row(
                        children: [
                          Spacer(),
                          TextButton(
                              onPressed: () {
                                print("Forgot password");
                              },
                              child: vibeeText("Forgot pasword"))
                        ],
                      ),
                      SizedBox(height: 50),
                      vibeeButton(
                          content: "Log In",
                          onPressed: () async {
                            if (loginFrontendValidation()) {
                              print("Working");
                              int loginStatusCode = await APIServices.userLogin(
                                context: context,
                                email: emailTextController.text,
                                password: passwordTextController.text,
                              );

                              print(loginStatusCode);

                              await login(loginStatusCode);
                            }
                          },
                          height: 35,
                          width: double.infinity),
                      SizedBox(height: 40),
                      Row(
                        children: [
                          Container(
                            color: Colors.white,
                            width: 135,
                            height: 2,
                          ),
                          vibeeText("  OR  ", size: 13),
                          Container(
                            color: Colors.white,
                            width: 135,
                            height: 2,
                          ),
                        ],
                      ),
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
                            vibeeText("Signin with Google"),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 100),
                Divider(color: Colors.white, height: 2),
                SizedBox(height: 10),
                TextButton(
                    onPressed: () {
                      navigatorPush(
                          context: context, nextPage: RegisterScreen());
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        vibeeText("Don't have an account?"),
                        Text(" Sign Up"),
                      ],
                    )),
                SizedBox(height: 10),
              ],
            ),
          ),
        ),
      ),
    );
  }

  bool loginFrontendValidation() {
    bool isValidationSuccess = true;

    if (!isValidEmail(emailTextController.text)) {
      setState(() {
        emailWarningText = "Please enter a valid email address";
      });
      isValidationSuccess = false;
    }

    if (emailTextController.text.isEmpty) {
      setState(() {
        emailWarningText = "Please enter your email address";
      });
      isValidationSuccess = false;
    }
    if (passwordTextController.text.isEmpty) {
      setState(() {
        passwordWarningText = "Please enter your password";
      });
      isValidationSuccess = false;
    }
    return isValidationSuccess;
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

  login(loginStatusCode) async {
    if (loginStatusCode == 200) {
      await APIServices.GetCurrentUserDetailsResponse();
      navigatorPush(context: context, nextPage: HomeScreen());
    } else if (loginStatusCode == 400) {
      showSnackBar(
        context: context,
        message: 'Please enter a valid username and pasword',
        textColor: Colors.white,
        buttonVisibility: false,
        height: 50,
        backgroundColor: Colors.red,
      );
    } else if (loginStatusCode == 401) {
      showSnackBar(
        context: context,
        message: "Username and password didn't exist",
        textColor: Colors.white,
        buttonVisibility: false,
        height: 50,
        backgroundColor: Colors.red,
      );
    } else if (loginStatusCode == 403) {
      showSnackBar(
        context: context,
        message: "Please verify your account",
        textColor: Colors.white,
        buttonVisibility: false,
        height: 50,
        backgroundColor: Colors.red,
      );
      navigatorPush(context: context, nextPage: OtpVerificationScreen());
    } else if (loginStatusCode == 500) {
      showSnackBar(
          context: context,
          message: "Something went wrong. Please try again later",
          textColor: Colors.white,
          buttonVisibility: false,
          height: 50,
          backgroundColor: Colors.red);
    }
  }
}
