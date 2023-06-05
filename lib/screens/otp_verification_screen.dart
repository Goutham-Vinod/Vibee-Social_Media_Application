import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_pin_code_fields/flutter_pin_code_fields.dart';
import 'package:vibee/models/otp_request_model.dart';
import 'package:vibee/screens/home_screen.dart';
import 'package:vibee/services/api_services.dart';
import 'package:vibee/services/config.dart';
import '../widgets/common_widgets.dart';

class OtpVerificationScreen extends StatelessWidget {
  OtpVerificationScreen({super.key});
  int? otpNumber;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: backgroundScreenColor,
        body: Padding(
          padding: const EdgeInsets.all(25.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            SizedBox(height: 60),
            SizedBox(
              width: 250,
              child: vibeeText("Enter Your OTP",
                  size: 35, fontWeight: FontWeight.w800),
            ),
            SizedBox(height: 20),
            SizedBox(
              width: 300,
              child: vibeeText(
                'Enter 4-digit code we have sent to you at ${Config.userPhoneNumber}',
                size: 16,
              ),
            ),
            SizedBox(height: 60),
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
                  textStyle: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                  onComplete: (value) {
                    otpNumber = int.parse(value);
                    print('Completed');
                  },
                ),
              ),
            ),
            Spacer(),
            Center(
                child: SizedBox(
                    width: 260,
                    height: 55,
                    child: ElevatedButton(
                        onPressed: () async {
                          if (otpNumber != null) {
                            OtpRequestModel otpRequest =
                                OtpRequestModel(otp: otpNumber!);
                            bool isVerified = await APIServices.verifyOtp(
                              context: context,
                              otpRequest: otpRequest,
                            );

                            if (isVerified) {
                              navigatorPush(
                                  context: context, nextPage: HomeScreen());
                            }
                          } else {
                            showSnackBar(
                                context: context, message: 'Please enter OTP');
                          }
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
                        navigatorPush(
                          context: context,
                          nextPage: HomeScreen(),
                        );
                      }
                    },
                    child: vibeeText(
                      'Resent OTP',
                      color: vibeePurple,
                      size: 16,
                    ))),
            SizedBox(height: 50),
          ]),
        ),
      ),
    );
  }
}
