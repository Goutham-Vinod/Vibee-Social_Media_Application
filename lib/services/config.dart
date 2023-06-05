class Config {
  static const String apiBaseUrl = "http://10.0.2.2:4000";
  static const String registerApi = "$apiBaseUrl/api/register";
  static String? userId;
  static String otpVerifyApi = "$apiBaseUrl/api/register/otp?id=$userId";
  static const String loginApi = "$apiBaseUrl/api/login";
  static String resentOtpApi = "$apiBaseUrl/api/register/otp/resend?id=$userId";

  static String? tocken;
  static String bearerTocken = "Bearer $tocken";
  static String? userPhoneNumber;
}
