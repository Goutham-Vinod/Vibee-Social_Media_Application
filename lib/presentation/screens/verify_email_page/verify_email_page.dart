import 'package:flutter/material.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/domain/models/otp_verification/otp_request_model.dart';
import 'package:vibee/infrastructure/api_services.dart';
import 'package:vibee/core/config.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/screens/home_screen/home_screen.dart';

class VerifyEmailScreen extends StatelessWidget {
  VerifyEmailScreen({super.key});
  int? otpNumber;

  @override
  Widget build(BuildContext context) {
    final userId = ModalRoute.of(context)?.settings.arguments as String;
    // this should be passed to api services inorder to verify email and resent otp
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: backgroundScreenColor,
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const SizedBox(height: 60),
            SizedBox(
              width: 250,
              child: vibeeText("Enter Your OTP",
                  size: 35, fontWeight: FontWeight.w800),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: vibeeText(
                'Enter 6-digit code we have sent to your email',
                size: 16,
              ),
            ),
            const SizedBox(height: 60),
            Center(
              child: SizedBox(
                width: 300,
                height: 70,
                child: PinCodeFields(
                  length: 6,
                  fieldBorderStyle: FieldBorderStyle.square,
                  // fieldHeight: 60,
                  // borderWidth: 1.0,
                  activeBorderColor: vibeePurple,
                  borderRadius: BorderRadius.circular(12),
                  textStyle: const TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                  onComplete: (value) {
                    otpNumber = int.parse(value);
                  },
                ),
              ),
            ),
            const Spacer(),
            Center(
                child: SizedBox(
                    width: 260,
                    height: 55,
                    child: ElevatedButton(
                        onPressed: () async {
                          print(
                              'sent email verify email otp api , if success then navigate');
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              RouteGenerator.changePasswordScreen,
                              (route) => false);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor: vibeePurple,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0))),
                        child: vibeeText(
                          'Continue',
                          size: 18,
                        )))),
            Center(
                child: TextButton(
                    onPressed: () async {
                      bool isAlreadyVerified =
                          await APIServices.resentOtp(context: context);
                      if (isAlreadyVerified) {
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          RouteGenerator.home,
                          (route) => false,
                        );
                      }
                    },
                    child: vibeeText(
                      'Resent OTP',
                      color: vibeePurple,
                      size: 16,
                    ))),
            const SizedBox(height: 50),
          ]),
        ),
      ),
    );
  }
}
