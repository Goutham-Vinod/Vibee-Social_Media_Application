import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/register_screen_2/register_screen_2_bloc.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/core/routing/routing_arguments/register_screen_2_arguments.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/common_widgets/terms_n_conditions.dart';

class RegisterScreen2 extends StatelessWidget {
  RegisterScreen2({super.key});

  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as RegisterScreen2Arguments;

    final String firstName = routeArgs.firstName;
    final String lastName = routeArgs.lastName;
    final String username = routeArgs.username;
    final String email = routeArgs.email;
    return BlocListener<RegisterScreen_2_Bloc, RegisterScreen_2_State>(
      listener: (context, state) {
        Option<Either<ApiFailure, bool>> isValidationCompletedOption =
            state.isValidationCompleted;
        isValidationCompletedOption.fold(
            () => null,
            (isValidationCompleted) => {
                  isValidationCompleted.fold((failure) {
                    if (failure.errorMessage ==
                        'User already exist.Would you like to continue?') {
                      showSnackBar(
                          context: context,
                          message:
                              'User already exist.Would you like to continue?',
                          buttonVisibility: true,
                          buttonText: 'Yes',
                          buttonFunction: () {
                            Navigator.pushNamed(
                              context,
                              RouteGenerator.otpVerificationScreen,
                            );
                          });
                    } else {
                      showSnackBar(
                        context: context,
                        message: failure.errorMessage,
                        backgroundColor: Colors.red,
                      );
                    }
                  }, (isValidationSucess) {
                    if (isValidationSucess) {
                      Navigator.pushNamed(
                          context, RouteGenerator.otpVerificationScreen);
                    }
                  })
                });
      },
      child: GestureDetector(
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
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 35,
                        )),
                  ),
                  const Spacer(),
                ],
              ),
              const Spacer(),
              vibeeLogo(size: 40),
              const SizedBox(height: 70),
              vibeeTextFormField(
                  hint: "Phone",
                  textController: phoneNumberController,
                  textInputType: TextInputType.number,
                  prefixIcon: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 11, horizontal: 11),
                    child: GestureDetector(
                        onTap: () {
                          showSnackBar(
                            context: context,
                            message:
                                "Our app support only indian phone numbers",
                            buttonVisibility: false,
                          );
                        },
                        child:
                            vibeeText("+91", size: 17, color: Colors.white38)),
                    // our app support only indian phone numbers
                  ),
                  onChanged: () {
                    BlocProvider.of<RegisterScreen_2_Bloc>(context)
                        .add(const ClearPhoneNumberWarningText());
                  }),
              Row(
                children: [
                  const SizedBox(width: 60),
                  BlocBuilder<RegisterScreen_2_Bloc, RegisterScreen_2_State>(
                    builder: (context, state) {
                      return vibeeText(state.phoneNumberWarningText,
                          color: Colors.red);
                    },
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 10),
              vibeeTextFormField(
                  hint: "Password",
                  isPassword: true,
                  textController: passwordController,
                  onChanged: () {
                    BlocProvider.of<RegisterScreen_2_Bloc>(context)
                        .add(const ClearPasswordWarningText());
                  }),
              Row(
                children: [
                  const SizedBox(width: 60),
                  BlocBuilder<RegisterScreen_2_Bloc, RegisterScreen_2_State>(
                    builder: (context, state) {
                      return vibeeText(state.passwordWarningText,
                          color: Colors.red);
                    },
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 10),
              vibeeTextFormField(
                  hint: "Confirm Password",
                  isPassword: true,
                  textController: confirmPasswordController,
                  onChanged: () {
                    BlocProvider.of<RegisterScreen_2_Bloc>(context)
                        .add(const ClearConfirmPasswordWarningText());
                  }),
              Row(
                children: [
                  const SizedBox(width: 60),
                  BlocBuilder<RegisterScreen_2_Bloc, RegisterScreen_2_State>(
                    builder: (context, state) {
                      return vibeeText(state.confirmPasswordWarningText,
                          color: Colors.red);
                    },
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 50),
              vibeeButton(
                  content: "Sign Up",
                  onPressed: () async {
                    BlocProvider.of<RegisterScreen_2_Bloc>(context)
                        .add(RegisterScreen_2_Event.registerUser(
                      firstName: firstName,
                      lastName: lastName,
                      username: username,
                      email: email,
                      phoneNumber: phoneNumberController.text,
                      password: passwordController.text,
                      confirmPassword: confirmPasswordController.text,
                    ));
                  },
                  height: 35,
                  width: 300),
              const SizedBox(height: 150),
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
              const SizedBox(height: 30),
            ],
          )),
        ),
      ),
    );
  }
}
