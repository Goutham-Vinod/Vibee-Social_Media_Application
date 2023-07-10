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
  static String get getPostUrl => '$apiBaseUrl/api/post';
  static String get editUserApi => '$apiBaseUrl/api/user/edit';
  static String get createPostApi => '$apiBaseUrl/api/post/create';
  static String getPostsByOneUserApi({required String username}) =>
      '$apiBaseUrl/api/post/user/$username';
  static String get getPostsApi => '$apiBaseUrl/api/post';
  static String get discoverApi => '$apiBaseUrl/api/post/discover/posts';
  static String get addCommentApi => '$apiBaseUrl/api/post/comment';
  static String loadCommentsApi({required String postId}) =>
      '$apiBaseUrl/api/post/$postId/comments';
  static String getDetailsOfSinglePostApi({required String postId}) =>
      '$apiBaseUrl/api/post/$postId';
  static String get likeOrDislikePostApi => '$apiBaseUrl/api/post/like';
  static String get getSavedPostsApi => '$apiBaseUrl/api/post/saved/posts';
  static String get sharePostApi => '$apiBaseUrl/api/post/share';
  static String get savePostApi => '$apiBaseUrl/api/post/save';

  static String get friendsListApi => '$apiBaseUrl/api/friends';
  static String get getAllConversationsApi => '$apiBaseUrl/api/conversation/';
  static String get createNewSingleConversationApi =>
      '$apiBaseUrl/api/conversation/create';
  static String sentMessageApi({required String conversationId}) =>
      '$apiBaseUrl/api/conversation/message/$conversationId';
  static String getMessageApi({required String conversationId}) =>
      '$apiBaseUrl/api/conversation/$conversationId';
  static String get createGroupConversationApi =>
      '$apiBaseUrl/api/conversation/create';
  static String get sharePostAsMessageApi =>
      '$apiBaseUrl/api/conversation/share';
}
