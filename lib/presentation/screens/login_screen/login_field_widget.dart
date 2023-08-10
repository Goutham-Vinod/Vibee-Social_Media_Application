import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/login_screen/login_screen_bloc.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

class LoginFieldWidget extends StatelessWidget {
  const LoginFieldWidget({
    super.key,
    required this.emailTextController,
    required this.passwordTextController,
  });

  final TextEditingController emailTextController;
  final TextEditingController passwordTextController;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        vibeeTextFormField(
            hint: "Email Address",
            textController: emailTextController,
            onChanged: () {
              BlocProvider.of<LoginScreenBloc>(context)
                  .add(const LoginScreenEvent.clearEmailWarningText());
            }),
        Row(
          // field to show warning - Initially it will be empty
          children: [
            const SizedBox(width: 10),
            BlocBuilder<LoginScreenBloc, LoginScreenState>(
              builder: (context, state) {
                return vibeeText(state.emailWarningText, color: Colors.red);
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
              BlocProvider.of<LoginScreenBloc>(context)
                  .add(const LoginScreenEvent.clearPasswordWarningText());
            }),
        Row(
          // field to show warning - Initially it will be empty
          children: [
            const SizedBox(width: 10),
            BlocBuilder<LoginScreenBloc, LoginScreenState>(
              builder: (context, state) {
                return vibeeText(state.passwordWarningText, color: Colors.red);
              },
            ),
            const Spacer(),
          ],
        ),
        // Row(
        //   children: [
        //     const Spacer(),
        //     TextButton(
        //         onPressed: () {
        //           print("Forgot password");
        //         },
        //         child: vibeeText("Forgot pasword"))
        //   ],
        // ),
        const SizedBox(height: 20),
        vibeeButton(
            content: "Log In",
            onPressed: () async {
              BlocProvider.of<LoginScreenBloc>(context).add(
                  LoginScreenEvent.loginUser(
                      email: emailTextController.text.toLowerCase(),
                      password: passwordTextController.text));
            },
            height: 35,
            width: double.infinity),
      ],
    );
  }
}
