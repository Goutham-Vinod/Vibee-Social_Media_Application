import 'dart:convert';
import 'dart:developer';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/get_current_user_details_response_model.dart';
import 'package:vibee/domain/models/login/login_response_model.dart';
import 'package:vibee/domain/models/otp_verification/otp_request_model.dart';
import 'package:vibee/domain/models/otp_verification/otp_response_model.dart';
import 'package:vibee/domain/models/otp_verification/resent_otp_response_model.dart';
import 'package:vibee/domain/models/register/register_request_model.dart';
import 'package:vibee/domain/models/register/register_response_model.dart';
import 'package:vibee/infrastructure/shared_pref_services.dart';
import 'package:vibee/core/config.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

class APIServices {
  static var client = http.Client();

  static Future<GetCurrentUserDetailsResponseModel?>
      GetCurrentUserDetailsResponse() async {
    final response = await http.get(
      Uri.parse(Config.getCurrentUserDetailsApi),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': Config.bearerTocken,
      },
    );

    if (response.statusCode == 200) {
      GetCurrentUserDetailsResponseModel currentUserDetailsResponse =
          GetCurrentUserDetailsResponseModel.fromJson(
              jsonDecode(response.body));
      CommonVariables.currentUserDetailsResponse = currentUserDetailsResponse;
      return currentUserDetailsResponse;
    } else {
      print('Something went wrong at get current user details');
    }
  }

  static Future<Either<ApiFailure, bool>> userLogin({
    required String email,
    required String password,
  }) async {
    try {
      final response = await http.post(
        Uri.parse(Config.loginApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body:
            jsonEncode(<String, String>{"email": email, "password": password}),
      );
      print('got response');
      if (response.statusCode == 200) {
        LoginResponseModel loginResponse =
            LoginResponseModel.fromJson(jsonDecode(response.body));
        await SharedPrefServices.setTocken(loginResponse.token);
        await SharedPrefServices.setUserId(loginResponse.user.id);
        await SharedPrefServices.setPhoneNumber(loginResponse.user.phone);
        return right(true);
      } else if (response.statusCode == 400) {
        return left(ApiFailure.serverFailure(
            statusCode: response.statusCode,
            errorMessage: 'Please enter a valid username and pasword'));
        // This message will be shown in snackbar
      } else if (response.statusCode == 401) {
        print('error 401');
        return left(ApiFailure.serverFailure(
            statusCode: response.statusCode,
            errorMessage: "Username and password didn't exist"));
        // This message will be shown in snackbar
      } else if (response.statusCode == 403) {
        return left(ApiFailure.serverFailure(
            statusCode: response.statusCode,
            errorMessage: "Please verify your account"));
        // This message will be shown in snackbar
      } else if (response.statusCode == 500) {
        return left(ApiFailure.serverFailure(
            statusCode: response.statusCode,
            errorMessage: "Something went wrong. Please try again later"));
        // This message will be shown in snackbar
      } else {
        return left(const ApiFailure.serverFailure(
            errorMessage: "Something went wrong. Please try again later"));
        // This message will be shown in snackbar
      }
    } catch (e) {
      return left(const ApiFailure.clientFailure(
          errorMessage: 'Oops...Something went wrong.'));
      // This message will be shown in snackbar
    }
  }

  static Future<Either<ApiFailure, bool>> registerUser(
      {required RegisterRequestModel registerRequest}) async {
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
        return right(true);
        // validation completed
      } else if (response.statusCode == 409) {
        return left(const ApiFailure.serverFailure(
          statusCode: 409,
          errorMessage: 'User already exist.Would you like to continue?',
          // This message will be shown in snackbar
        ));
      } else {
        return left(const ApiFailure.serverFailure(
            errorMessage: "Server error.Please try again later."));
        // This message will be shown in snackbar
      }
    } catch (e) {
      return left(const ApiFailure.clientFailure(
          errorMessage:
              "Oops... Something went wrong. Please try again later."));
      // This message will be shown in snackbar
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
          await GetCurrentUserDetailsResponse();
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
