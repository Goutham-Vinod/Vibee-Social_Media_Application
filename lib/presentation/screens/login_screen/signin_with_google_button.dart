import 'package:flutter/material.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

class SigninWithGoogleButton extends StatelessWidget {
  const SigninWithGoogleButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        print("TextButton");
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/images/google_logo.png", height: 12, width: 12),
          const SizedBox(width: 10),
          vibeeText("Signin with Google"),
        ],
      ),
    );
  }
}
