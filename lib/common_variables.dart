import 'package:flutter/material.dart';

import 'models/login_response_model.dart';
import 'models/otp_response_model.dart';
import 'models/register_response_model.dart';
import 'models/resent_otp_response_model.dart';

class CommonVariables {
  // static late LoginResponseModel? loginResponse;
  // static late RegisterResponseModel? registerResponse;
  // static late OtpResponseModel? otpResponse;
  // static late ResentOtpResponseModel? resentOtpResponse;

  static ValueNotifier<int> bottomNavIndexNotifier = ValueNotifier(0);
// selected bottom navigation bar index

  static String testImagePath1 = "assets/images/testImage.jpg";
  static String testImagePath2 = "assets/images/testImage2.jpg";
  static String testImagePath3 = "assets/images/testImage3.png";
  static String testImagePath4 = "assets/images/testImage4.jpg";
  static String testImagePath5 = "assets/images/testImage5.png";
  static String testImagePath6 = "assets/images/testImage6.jpg";
  static String testImagePath7 = "assets/images/testImage7.jpg";
  static String testImageBg = "assets/images/testImageBg.png";
}
