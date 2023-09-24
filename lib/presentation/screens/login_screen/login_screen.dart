import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/login_screen/login_screen_bloc.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/screens/login_screen/dont_have_an_account_button.dart';
import 'package:vibee/presentation/screens/login_screen/login_field_widget.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailTextController = TextEditingController();
  final TextEditingController passwordTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginScreenBloc, LoginScreenState>(
        listener: (context, state) {
          Option<Either<ApiFailure, bool>> isLoginSuccessOption =
              state.isValidated;

          isLoginSuccessOption.fold(() => null, (isLoginSuccess) {
            isLoginSuccess.fold((failure) {
              // failed to login
              if (failure.errorMessage != null) {
                showSnackBar(
                  context: context,
                  message: failure.errorMessage,
                  backgroundColor: Colors.red,
                );
              }
            }, (success) {
              // login success
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
          // Gesture detector to hide keyboard when tapped outside field
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            // resizeToAvoidBottomInset: false,
            backgroundColor: backgroundScreenColor,
            body: Body(
                emailTextController: emailTextController,
                passwordTextController: passwordTextController),
          ),
        ));
  }
}

//////////////////////////////////////////////////////////////////////////////////////
class Body extends StatelessWidget {
  const Body({
    super.key,
    required this.emailTextController,
    required this.passwordTextController,
  });

  final TextEditingController emailTextController;
  final TextEditingController passwordTextController;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 130),
            MiddleSection(
                emailTextController: emailTextController,
                passwordTextController: passwordTextController),
            const SizedBox(height: 100),
            const Divider(color: Colors.white, height: 2),
            const SizedBox(height: 10),
            const DontHaveAnAccountButton(),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////////////////////////////
class MiddleSection extends StatelessWidget {
  const MiddleSection({
    super.key,
    required this.emailTextController,
    required this.passwordTextController,
  });

  final TextEditingController emailTextController;
  final TextEditingController passwordTextController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      height: 500,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          vibeeLogo(size: 40),
          const SizedBox(height: 50),
          LoginFieldWidget(
              emailTextController: emailTextController,
              passwordTextController: passwordTextController),
          const SizedBox(height: 40),
          // Row(
          //   children: [
          //     Container(
          //       color: Colors.white,
          //       width: 135,
          //       height: 2,
          //     ),
          //     vibeeText("  OR  ", size: 13),
          //     Container(
          //       color: Colors.white,
          //       width: 135,
          //       height: 2,
          //     ),
          //   ],
          // ),
          // const SizedBox(height: 10),
          // const SigninWithGoogleButton(),
        ],
      ),
    );
  }
}
