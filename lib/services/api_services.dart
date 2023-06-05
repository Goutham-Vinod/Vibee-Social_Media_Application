import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vibee/models/otp_request_model.dart';
import 'package:vibee/models/register_request_model.dart';
import 'package:vibee/screens/otp_verification_screen.dart';
import 'package:vibee/services/config.dart';
import 'package:vibee/services/shared_pref_services.dart';
import 'package:vibee/widgets/common_widgets.dart';
import '../models/login_response_model.dart';
import '../models/otp_response_model.dart';
import '../models/register_response_model.dart';
import '../models/resent_otp_response_model.dart';

class APIServices {
  static var client = http.Client();

  static Future<int> userLogin({
    required BuildContext context,
    required String email,
    required String password,
  }) async {
    final response = await http.post(
      Uri.parse(Config.loginApi),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{"email": email, "password": password}),
    );
    if (response.statusCode == 200) {
      LoginResponseModel loginResponse =
          LoginResponseModel.fromJson(jsonDecode(response.body));
      await SharedPrefServices.setTocken(loginResponse.token);
      await SharedPrefServices.setUserId(loginResponse.user.id);
      await SharedPrefServices.setPhoneNumber(loginResponse.user.phone);
      return response.statusCode;
    } else {
      return response.statusCode;
    }
  }

  static Future<bool?> registerUser(
      {required context, required RegisterRequestModel registerRequest}) async {
    try {
      print('Register called');
      final response = await http.post(
        Uri.parse(Config.registerApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(registerRequest.toJson()),
      );
      print("Got response");
      if (response.statusCode == 200) {
        RegisterResponseModel registerResponse =
            RegisterResponseModel.fromJson(jsonDecode(response.body));
        await SharedPrefServices.setUserId(registerResponse.user.id);
        await SharedPrefServices.setPhoneNumber(registerResponse.user.phone);
        print('Got success response');
        return true;
      } else if (response.statusCode == 409) {
        showSnackBar(
            context: context,
            message: 'User already exist.Would you like to continue?',
            buttonVisibility: true,
            buttonText: 'Yes',
            buttonFunction: () {
              navigatorPush(
                context: context,
                nextPage: OtpVerificationScreen(),
              );
            },
            bottomPadding: 40);
        return false;
      } else {
        print("Status Code : ${response.statusCode} ,  ${response.body}");
        return false;
      }
    } catch (e) {
      print(e);
      // showSnackBar(context: context, message: e.toString());
    }
  }

  static Future<bool> resentOtp({required context}) async {
    print('resent otp called');
    print(Config.resentOtpApi);
    final response = await http.get(
      Uri.parse(Config.resentOtpApi),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    print('Got resent otp response');
    if (response.statusCode == 200) {
      ResentOtpResponseModel resentOtpResponse =
          ResentOtpResponseModel.fromJson(jsonDecode(response.body));

      if (resentOtpResponse.verified == true) {
        print("Already Verified");
        return true;
      }
      showSnackBar(context: context, message: 'OTP Sent to your phone');
      return false;
    } else if (response.statusCode == 500) {
      showSnackBar(
        context: context,
        message: 'Something went wrong.Please try again later',
        bottomPadding: 40,
      );
      return false;
    } else {
      print("Status Code : ${response.statusCode} ,  ${response.body}");
      return false;
    }
  }

  static Future<bool> verifyOtp({
    required BuildContext context,
    required OtpRequestModel otpRequest,
  }) async {
    try {
      print(Config.otpVerifyApi);
      final response = await http.patch(
        Uri.parse(Config.otpVerifyApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(otpRequest.toJson()),
      );
      print("No error while fetching");

      if (response.statusCode == 200) {
        log(response.body);
        OtpResponseModel otpResponse =
            OtpResponseModel.fromJson(jsonDecode(response.body));
        print("Success");
        if (otpResponse.success == true || otpResponse.verified == true) {
          await SharedPrefServices.setTocken(otpResponse.token!);
          await SharedPrefServices.setUserId(otpResponse.user!.id);
          await SharedPrefServices.setPhoneNumber(otpResponse.user!.phone);
          return true;
        }
      } else {
        showSnackBar(
            context: context,
            message:
                'Something went wrong.Please check entered OTP or try again later');
        print("Status Code : ${response.statusCode} ,  ${response.body}");
        return false;
      }
    } catch (e) {
      print("Error ------- $e -------------------------");
    }

    return false;
  }
}
