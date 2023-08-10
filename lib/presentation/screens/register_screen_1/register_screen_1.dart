import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/register_screen_1/register_screen_1_bloc.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/core/routing/routing_arguments/register_screen_2_arguments.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/common_widgets/terms_n_conditions.dart';

class RegisterScreen extends StatelessWidget {
  RegisterScreen({super.key});

  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<RegisterScreen_1_Bloc, RegisterScreen_1_State>(
      listener: (context, state) {
        if (state.isRegisterScreen1Validated) {
          Navigator.pushNamed(context, RouteGenerator.registerScreen2,
              arguments: RegisterScreen2Arguments(
                  firstName: firstNameController.text,
                  lastName: lastNameController.text,
                  username: usernameController.text,
                  email: emailController.text));
        }
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
              const Spacer(),
              vibeeLogo(size: 40),
              const SizedBox(height: 50),
              vibeeTextFormField(
                  hint: "First Name",
                  textController: firstNameController,
                  onChanged: () {
                    BlocProvider.of<RegisterScreen_1_Bloc>(context).add(
                        const RegisterScreen_1_Event
                            .clearFirstNameWarningText());
                  }),
              Row(
                children: [
                  const SizedBox(width: 60),
                  BlocBuilder<RegisterScreen_1_Bloc, RegisterScreen_1_State>(
                    builder: (context, state) {
                      return vibeeText(state.firstNameWarningText,
                          color: Colors.red);
                    },
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 10),
              vibeeTextFormField(
                  hint: "Last Name",
                  textController: lastNameController,
                  onChanged: () {
                    BlocProvider.of<RegisterScreen_1_Bloc>(context).add(
                        const RegisterScreen_1_Event
                            .clearLastNameWarningText());
                  }),
              Row(
                children: [
                  const SizedBox(width: 60),
                  BlocBuilder<RegisterScreen_1_Bloc, RegisterScreen_1_State>(
                    builder: (context, state) {
                      return vibeeText(state.lastNameWarningText,
                          color: Colors.red);
                    },
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 10),
              vibeeTextFormField(
                  hint: "Username",
                  textController: usernameController,
                  onChanged: () {
                    BlocProvider.of<RegisterScreen_1_Bloc>(context).add(
                        const RegisterScreen_1_Event
                            .clearUserNameWarningText());
                  }),
              Row(
                children: [
                  const SizedBox(width: 60),
                  BlocBuilder<RegisterScreen_1_Bloc, RegisterScreen_1_State>(
                    builder: (context, state) {
                      return vibeeText(state.usernameWarningText,
                          color: Colors.red);
                    },
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 10),
              vibeeTextFormField(
                  hint: "Email",
                  textController: emailController,
                  onChanged: () {
                    BlocProvider.of<RegisterScreen_1_Bloc>(context).add(
                        const RegisterScreen_1_Event.clearEmailWarningText());
                  }),
              Row(
                children: [
                  const SizedBox(width: 60),
                  BlocBuilder<RegisterScreen_1_Bloc, RegisterScreen_1_State>(
                    builder: (context, state) {
                      return vibeeText(state.emailWarningText,
                          color: Colors.red);
                    },
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 20),
              vibeeButton(
                  content: "Continue",
                  onPressed: () {
                    BlocProvider.of<RegisterScreen_1_Bloc>(context)
                        .add(RegisterScreen_1_Event.registerUser(
                      firstName: firstNameController.text,
                      lastName: lastNameController.text,
                      username: usernameController.text,
                      email: emailController.text,
                    ));
                  },
                  height: 35,
                  width: 300),
              const SizedBox(height: 10),
              // TextButton(
              //   onPressed: () {
              //     print("TextButton");
              //   },
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.center,
              //     children: [
              //       Image.asset("assets/images/google_logo.png",
              //           height: 12, width: 12),
              //       const SizedBox(width: 10),
              //       vibeeText("Signup with Google"),
              //     ],
              //   ),
              // ),
              const SizedBox(height: 80),
              TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      vibeeText("Already have an account?"),
                      const Text(" Login"),
                    ],
                  )),
              const SizedBox(height: 10),
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
