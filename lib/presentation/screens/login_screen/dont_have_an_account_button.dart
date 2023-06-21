import 'package:flutter/material.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

class DontHaveAnAccountButton extends StatelessWidget {
  const DontHaveAnAccountButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
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
        ));
  }
}
