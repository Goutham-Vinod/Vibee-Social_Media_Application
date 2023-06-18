import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/login_screen/login_screen_bloc.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/screens/register_screen_1/register_screen_1.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginScreenBloc, LoginScreenState>(
      listener: (context, state) {
        print('listening..');
        Option<Either<ApiFailure, bool>> isLoginSuccessOption =
            state.isValidated;

        isLoginSuccessOption.fold(() => null, (isLoginSuccess) {
          isLoginSuccess.fold((failure) {
            if (failure.errorMessage != null) {
              showSnackBar(
                context: context,
                message: failure.errorMessage,
                backgroundColor: Colors.red,
              );
            }
          }, (success) {
            if (success == true) {
              Navigator.pushNamedAndRemoveUntil(
                context,
                RouteGenerator.home,
                (route) => false,
              );
            }
          });
        });
      },
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: backgroundScreenColor,
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 130),
                  SizedBox(
                    width: 300,
                    height: 500,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        vibeeLogo(size: 40),
                        const SizedBox(height: 50),
                        vibeeTextFormField(
                            hint: "Email Address",
                            textController: emailTextController,
                            onChanged: () {
                              BlocProvider.of<LoginScreenBloc>(context).add(
                                  const LoginScreenEvent
                                      .clearEmailWarningText());
                            }),
                        Row(
                          children: [
                            const SizedBox(width: 10),
                            BlocBuilder<LoginScreenBloc, LoginScreenState>(
                              builder: (context, state) {
                                return vibeeText(state.emailWarningText,
                                    color: Colors.red);
                              },
                            ),
                            const Spacer(),
                          ],
                        ),
                        const SizedBox(height: 10),
                        vibeeTextFormField(
                            hint: "Password",
                            textController: passwordTextController,
                            isPassword: true,
                            onChanged: () {
                              BlocProvider.of<LoginScreenBloc>(context).add(
                                  const LoginScreenEvent
                                      .clearPasswordWarningText());
                            }),
                        Row(
                          children: [
                            const SizedBox(width: 10),
                            BlocBuilder<LoginScreenBloc, LoginScreenState>(
                              builder: (context, state) {
                                return vibeeText(state.passwordWarningText,
                                    color: Colors.red);
                              },
                            ),
                            const Spacer(),
                          ],
                        ),
                        Row(
                          children: [
                            const Spacer(),
                            TextButton(
                                onPressed: () {
                                  print("Forgot password");
                                },
                                child: vibeeText("Forgot pasword"))
                          ],
                        ),
                        const SizedBox(height: 50),
                        vibeeButton(
                            content: "Log In",
                            onPressed: () async {
                              BlocProvider.of<LoginScreenBloc>(context).add(
                                  LoginScreenEvent.loginUser(
                                      email: emailTextController.text,
                                      password: passwordTextController.text));
                            },
                            height: 35,
                            width: double.infinity),
                        const SizedBox(height: 40),
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
                        const SizedBox(height: 10),
                        TextButton(
                          onPressed: () {
                            print("TextButton");
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset("assets/images/google_logo.png",
                                  height: 12, width: 12),
                              const SizedBox(width: 10),
                              vibeeText("Signin with Google"),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 100),
                  const Divider(color: Colors.white, height: 2),
                  const SizedBox(height: 10),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(
                          context,
                          RouteGenerator.registerScreen1,
                        );
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          vibeeText("Don't have an account?"),
                          const Text(" Sign Up"),
                        ],
                      )),
                  const SizedBox(height: 10),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
