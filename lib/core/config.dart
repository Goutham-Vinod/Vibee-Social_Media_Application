class Config {
  static const String apiBaseUrl = "http://10.0.2.2:4000";
  static String? tocken;
  static String? userPhoneNumber;
  static String? currentUserId;
  ////////////////////////////////////////////////////////////////////

  static String get bearerTocken => "Bearer $tocken";
  static String get registerApi => "$apiBaseUrl/api/register";
  static String get otpVerifyApi =>
      "$apiBaseUrl/api/register/otp?id=$currentUserId";
  static String get loginApi => "$apiBaseUrl/api/login";
  static String get resentOtpApi =>
      "$apiBaseUrl/api/register/otp/resend?id=$currentUserId";
  static String get getCurrentUserDetailsApi => '$apiBaseUrl/api/user/details';
  static String searchUsersApi({required String searchKey}) =>
      '$apiBaseUrl/api/users/search?key=$searchKey';
  static String getUserDetailsApi({required String username}) =>
      '$apiBaseUrl/api/user/profile/$username';
  static String addOrRemoveFriendApi = '$apiBaseUrl/api/friend/change';
  static String getNotificationsApi = '$apiBaseUrl/api/notifications';
  static String getPictureUrl({required String picturePath}) =>
      '$apiBaseUrl/$picturePath';
}
