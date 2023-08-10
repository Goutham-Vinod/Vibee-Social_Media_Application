import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart';
import 'package:http_parser/http_parser.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/add_comments_request_model/add_comments_request_model.dart';
import 'package:vibee/domain/models/add_or_remove_friend_response_model/add_or_remove_friend_response_model.dart';
import 'package:vibee/domain/models/create_group_conversation_request_model/create_group_conversation_request_model.dart';
import 'package:vibee/domain/models/create_post_response_model/create_post_response_model.dart';
import 'package:vibee/domain/models/discover_response_model/discover_response_model.dart';
import 'package:vibee/domain/models/friends_list_response_model/friends_list_response_model.dart';
import 'package:vibee/domain/models/get_all_conversations_response_model/get_all_conversations_response_model.dart';
import 'package:vibee/domain/models/get_current_user_details_response_model/get_current_user_details_response_model.dart';
import 'package:vibee/domain/models/get_details_of_single_post_response_model/get_details_of_single_post_response_model.dart';
import 'package:vibee/domain/models/get_message_response_model/get_message_response_model.dart';
import 'package:vibee/domain/models/get_post_by_one_user_response_model/get_post_by_one_user_response_model.dart';
import 'package:vibee/domain/models/get_posts_response_model/get_posts_response_model.dart';
import 'package:vibee/domain/models/get_saved_posts_response_model/get_saved_posts_response_model.dart';
import 'package:vibee/domain/models/get_user_details_response_model/get_user_details_response_model.dart';
import 'package:vibee/domain/models/like_dislike_response_model/like_dislike_response_model.dart';
import 'package:vibee/domain/models/load_comments_response_model/load_comments_response_model.dart';
import 'package:vibee/domain/models/login/login_response_model.dart';
import 'package:vibee/domain/models/notifications_response_model/notifications_response_model.dart';
import 'package:vibee/domain/models/online_friends_response_model/online_friends_response_model.dart';
import 'package:vibee/domain/models/otp_verification/otp_request_model.dart';
import 'package:vibee/domain/models/otp_verification/otp_response_model.dart';
import 'package:vibee/domain/models/otp_verification/resent_otp_response_model.dart';
import 'package:vibee/domain/models/register/register_request_model.dart';
import 'package:vibee/domain/models/register/register_response_model.dart';
import 'package:vibee/domain/models/search_user_response_model/search_user_response_model.dart';
import 'package:vibee/domain/models/sent_message_response_model/sent_message_response_model.dart';
import 'package:vibee/domain/models/share_post_as_message_request_model/share_post_as_message_request_model.dart';
import 'package:vibee/domain/models/share_post_as_message_response_model/share_post_as_message_response_model.dart';
import 'package:vibee/domain/models/share_post_request_model/share_post_request_model.dart';
import 'package:vibee/domain/models/share_post_response_model/share_post_response_model.dart';
import 'package:vibee/domain/models/video_call_response_model/video_call_response_model.dart';
import 'package:vibee/infrastructure/shared_pref_services.dart';
import 'package:vibee/core/config.dart';
import 'package:vibee/infrastructure/socket_io_services.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

class APIServices {
  static var client = http.Client;

  static Future<GetCurrentUserDetailsResponseModel?>
      GetCurrentUserDetailsResponse() async {
    final response = await http.get(
      Uri.parse(Config.getCurrentUserDetailsApi),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization': Config.bearerTocken,
      },
    );
    print(response.body);
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
        await GetCurrentUserDetailsResponse();
        SocketIoServices.setup(Config.bearerTocken);

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
        // Example message : Phone number already registered
        log(response.body);
        Map responseMap = jsonDecode(response.body);
        log(responseMap.toString());
        String? responseMessage = responseMap['message'];
        return left(ApiFailure.serverFailure(
          statusCode: 409,
          errorMessage: responseMessage ?? 'User Already exist.',
          // This message will be shown in snackbar
        ));
      } else if (response.statusCode == 400) {
        // Example message : Please enter country code
        log(response.body);
        Map responseMap = jsonDecode(response.body);
        log(responseMap.toString());
        String? responseMessage = responseMap['phone'];
        return left(ApiFailure.serverFailure(
          statusCode: 400,
          errorMessage: responseMessage ?? 'Please enter correct information',
          // This message will be shown in snackbar
        ));
      } else {
        log(response.statusCode.toString());
        log(response.body);
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
          SocketIoServices.setup(Config.bearerTocken);
          return true;
        } else {
          showSnackBar(
              context: context,
              message:
                  'Something went wrong.Please check entered OTP or try again later');
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

  static Future<Either<ApiFailure, SearchUserResponseModel>> searchUser(
      String searchKey) async {
    try {
      final response = await http.get(
        Uri.parse(Config.searchUsersApi(searchKey: searchKey)),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
      );
      print(response.body);
      if (response.statusCode == 200) {
        SearchUserResponseModel searchUserResponse =
            SearchUserResponseModel.fromJson(jsonDecode(response.body));
        return right(searchUserResponse);
      } else {
        print('status code ${response.statusCode}');
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

  static Future<Either<ApiFailure, GetUserDetailsResponseModel>> getUserDetails(
      {required String username}) async {
    try {
      final response = await http.get(
        Uri.parse(Config.getUserDetailsApi(username: username)),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
      );
      print(response.body);
      if (response.statusCode == 200) {
        GetUserDetailsResponseModel userDetailsResponse =
            GetUserDetailsResponseModel.fromJson(jsonDecode(response.body));

        return right(userDetailsResponse);
      } else {
        print('status code ${response.statusCode}');
        return left(const ApiFailure.serverFailure(
            errorMessage: "Something went wrong. Please try again later"));
      }
    } catch (e) {
      return left(const ApiFailure.clientFailure(
          errorMessage: 'Oops...Something went wrong.'));
    }
  }

  static Future<Either<ApiFailure, AddOrRemoveFriendResponseModel>>
      addOrRemoveFriend({required String? friendId}) async {
    try {
      if (friendId == null) {
        print('id is null');
        return left(const ApiFailure.serverFailure(
            errorMessage: "Something went wrong. Please try again later"));
      }
      Response response = await http.patch(
        Uri.parse(Config.addOrRemoveFriendApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
        body: jsonEncode({"id": friendId}),
      );
      print(response.body);
      if (response.statusCode == 200) {
        AddOrRemoveFriendResponseModel addOrRemoveFriendResponse =
            AddOrRemoveFriendResponseModel.fromJson(jsonDecode(response.body));

        return right(addOrRemoveFriendResponse);
      } else {
        print('status code ${response.statusCode}');
        return left(const ApiFailure.serverFailure(
            errorMessage: "Something went wrong. Please try again later"));
      }
    } catch (e) {
      return left(const ApiFailure.clientFailure(
          errorMessage: 'Oops...Something went wrong.'));
    }
  }

  static Future<Either<ApiFailure, NotificationsResponseModel>>
      getNotifications() async {
    try {
      final response = await http.get(
        Uri.parse(Config.getNotificationsApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
      );
      print(response.body);
      if (response.statusCode == 200) {
        NotificationsResponseModel notificationsResponse =
            NotificationsResponseModel.fromJson(jsonDecode(response.body));

        return right(notificationsResponse);
      } else {
        print('status code ${response.statusCode}');
        return left(const ApiFailure.serverFailure(
            errorMessage: "Something went wrong. Please try again later"));
      }
    } catch (e) {
      return left(const ApiFailure.clientFailure(
          errorMessage: 'Oops...Something went wrong.'));
    }
  }

  static Future<Either<ApiFailure, GetPostsResponseModel>>
      getPostResponse() async {
    try {
      final response = await http.get(
        Uri.parse(Config.getPostUrl),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
      );

      print(response.body);
      if (response.statusCode == 200) {
        GetPostsResponseModel getPostResponse =
            GetPostsResponseModel.fromJson(jsonDecode(response.body));

        return right(getPostResponse);
      } else {
        print('status code ${response.statusCode}');
        return left(const ApiFailure.serverFailure(
            errorMessage: "Something went wrong. Please try again later"));
      }
    } catch (e) {
      return left(const ApiFailure.clientFailure(
          errorMessage: 'Oops...Something went wrong.'));
    }
  }

  static Future<Either<ApiFailure, bool>> editProfile({
    String? firstName,
    String? lastName,
    String? username,
    DateTime? dob,
    String? email,
    String? location,
    File? profilePicture,
    File? coverPicture,
  }) async {
    try {
      var request =
          http.MultipartRequest('PATCH', Uri.parse(Config.editUserApi));
      request.headers.addAll({
        "Content-Type": "multipart/form-data",
        "Authorization": Config.bearerTocken,
      });

      request.fields['firstName'] =
          firstName ?? CommonVariables.currentUserDetailsResponse!.firstName!;
      request.fields['lastName'] =
          lastName ?? CommonVariables.currentUserDetailsResponse!.lastName!;
      request.fields['username'] =
          username ?? CommonVariables.currentUserDetailsResponse!.username!;
      request.fields['date'] = dob?.toIso8601String() ??
          CommonVariables.currentUserDetailsResponse?.dob?.toIso8601String() ??
          DateTime.now().toIso8601String();
      request.fields['email'] =
          email ?? CommonVariables.currentUserDetailsResponse!.email!;
      if (CommonVariables.currentUserDetailsResponse?.location != null) {
        request.fields['location'] =
            CommonVariables.currentUserDetailsResponse!.location!;
      }

      if (location != null) {
        request.fields['location'] = location;
      }

      if (profilePicture != null) {
        print('image added');
        String filename = profilePicture.path.split('/').last;
        String fileExtension = filename.split(".").last;
        request.files.add(http.MultipartFile(
          'profilePicture',
          profilePicture.readAsBytes().asStream(),
          profilePicture.lengthSync(),
          filename: filename,
          contentType: MediaType('image', fileExtension),
        ));
      }
      if (coverPicture != null) {
        print('image added');
        String filename = coverPicture.path.split('/').last;
        String fileExtension = filename.split(".").last;
        request.files.add(http.MultipartFile(
          'coverPicture',
          coverPicture.readAsBytes().asStream(),
          coverPicture.lengthSync(),
          filename: filename,
          contentType: MediaType('image', fileExtension),
        ));
      }
      StreamedResponse streamedResponse = await request.send();
      Response response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 200) {
        print('status code ${response.statusCode}');
        return right(true);
      } else {
        print('status code ${response.statusCode}');
        return left(const ApiFailure.serverFailure(
            errorMessage: "Something went wrong. Please try again later"));
      }
    } catch (e) {
      return left(const ApiFailure.clientFailure(
          errorMessage: 'Oops...Something went wrong.'));
    }
  }

  static Future<Either<ApiFailure, CreatePostResponseModel>> createPost({
    required String description,
    required String privacy,
    String? location,
    File? post,
  }) async {
    try {
      
      var request =
          http.MultipartRequest('POST', Uri.parse(Config.createPostApi));
      request.headers.addAll({
        "Content-Type": "multipart/form-data",
        "Authorization": Config.bearerTocken,
      });

      request.fields['description'] = description;
      request.fields['privacy'] = privacy;
      if (location != null) {
        request.fields['location'] = location;
      }

      if (post != null) {
        print('image added');
        String filename = post.path.split('/').last;
        String fileExtension = filename.split(".").last;
        request.files.add(http.MultipartFile(
          'post',
          post.readAsBytes().asStream(),
          post.lengthSync(),
          filename: filename,
          contentType: MediaType('image', fileExtension),
        ));
      }

      StreamedResponse streamedResponse = await request.send();
      Response response = await http.Response.fromStream(streamedResponse);

      if (response.statusCode == 200 || response.statusCode == 201) {
        print('status code ${response.statusCode}');
        CreatePostResponseModel responseObj;

        print(response.body);
        responseObj =
            CreatePostResponseModel.fromJson(jsonDecode(response.body));
        return right(responseObj);
      } else {
        print('status code ${response.statusCode}');
        return left(const ApiFailure.serverFailure(
            errorMessage: "Something went wrong. Please try again later"));
      }
    } catch (e) {
      return left(const ApiFailure.clientFailure(
          errorMessage: 'Oops...Something went wrong.'));
    }
  }

  static Future<Either<ApiFailure, GetPostByOneUserResponseModel>>
      getPostByOneUser({required String username}) async {
    try {
      final response = await http.get(
        Uri.parse(Config.getPostsByOneUserApi(username: username)),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
      );
      print(response.body);
      if (response.statusCode == 200) {
        GetPostByOneUserResponseModel getPostByOneUserResponse =
            GetPostByOneUserResponseModel.fromJson(jsonDecode(response.body));

        return right(getPostByOneUserResponse);
      } else {
        print('status code ${response.statusCode}');
        return left(const ApiFailure.serverFailure(
            errorMessage: "Something went wrong. Please try again later"));
      }
    } catch (e) {
      return left(const ApiFailure.clientFailure(
          errorMessage: 'Oops...Something went wrong.'));
    }
  }

  static Future<Either<ApiFailure, DiscoverResponseModel>>
      discoverPosts() async {
    try {
      final response = await http.get(
        Uri.parse(Config.discoverApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
      );
      print(response.body);
      if (response.statusCode == 200) {
        DiscoverResponseModel discoverResponse =
            DiscoverResponseModel.fromJson(jsonDecode(response.body));

        return right(discoverResponse);
      } else {
        print('status code ${response.statusCode}');
        return left(const ApiFailure.serverFailure(
            errorMessage: "Something went wrong. Please try again later"));
      }
    } catch (e) {
      return left(const ApiFailure.clientFailure(
          errorMessage: 'Oops...Something went wrong.'));
    }
  }

  static Future<Either<ApiFailure, bool>> addComments(
      {required AddCommentsRequestModel addCommentsRequest}) async {
    try {
      final response = await http.patch(
        Uri.parse(Config.addCommentApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
        body: jsonEncode(addCommentsRequest.toJson()),
      );
      print("Got response");

      if (response.statusCode == 200 || response.statusCode == 201) {
        return right(true);
      } else {
        log(response.statusCode.toString());
        log(response.body);
        print('inside else block of sent comment response status code check');

        return left(const ApiFailure.serverFailure(
            errorMessage: "Server error.Please try again later."));
        // This message will be shown in snackbar
      }
    } catch (e) {
      print('inside catch bloc of sent comment');
      return left(const ApiFailure.clientFailure(
          errorMessage:
              "Oops... Something went wrong. Please try again later."));
      // This message will be shown in snackbar
    }
  }

  static Future<Either<ApiFailure, List<LoadCommentsResponseModel>>>
      loadComments({required String postId}) async {
    try {
      final response = await http.get(
        Uri.parse(Config.loadCommentsApi(postId: postId)),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
      );

      if (response.statusCode == 200) {
        List<LoadCommentsResponseModel> loadCommentsResponseList =
            (jsonDecode(response.body) as List)
                .map((element) => LoadCommentsResponseModel.fromJson(
                    element as Map<String, dynamic>))
                .toList();

        return right(loadCommentsResponseList);
      } else {
        print('status code ${response.statusCode}');
        return left(const ApiFailure.serverFailure(
            errorMessage: "Something went wrong. Please try again later"));
      }
    } catch (e) {
      return left(const ApiFailure.clientFailure(
          errorMessage: 'Oops...Something went wrong.'));
    }
  }

  static Future<Either<ApiFailure, List<GetSavedPostsResponseModel>>>
      getSavedPostts() async {
    try {
      final response = await http.get(
        Uri.parse(Config.getSavedPostsApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
      );
      print(response.body);
      if (response.statusCode == 200) {
        List<GetSavedPostsResponseModel> getSavedPostsResponse =
            (jsonDecode(response.body) as List).map((postJsonMap) {
          return GetSavedPostsResponseModel.fromJson(postJsonMap);
        }).toList();

        return right(getSavedPostsResponse);
      } else {
        print('status code ${response.statusCode}');
        return left(const ApiFailure.serverFailure(
            errorMessage: "Something went wrong. Please try again later"));
      }
    } catch (e) {
      return left(const ApiFailure.clientFailure(
          errorMessage: 'Oops...Something went wrong.'));
    }
  }

  static Future<Either<ApiFailure, List<GetAllConversationsResponseModel>>>
      getAllConversations() async {
    try {
      final response = await http.get(
        Uri.parse(Config.getAllConversationsApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
      );
      print(response.body);
      if (response.statusCode == 200) {
        List<GetAllConversationsResponseModel> getAllConversationsResponseList =
            (jsonDecode(response.body) as List).map((conversation) {
          return GetAllConversationsResponseModel.fromJson(conversation);
        }).toList();

        return right(getAllConversationsResponseList);
      } else {
        print('status code ${response.statusCode}');
        return left(const ApiFailure.serverFailure(
            errorMessage: "Something went wrong. Please try again later"));
      }
    } catch (e) {
      return left(const ApiFailure.clientFailure(
          errorMessage: 'Oops...Something went wrong.'));
    }
  }

  static Future<Either<ApiFailure, List<OnlineFriendsResponseModel>>>
      checkOnlineFriends() async {
    try {
      final response = await http.get(
        Uri.parse(Config.onlineFriendsListApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
      );
      print(response.body);
      if (response.statusCode == 200) {
        List<OnlineFriendsResponseModel> onlineFriendsResponse =
            (jsonDecode(response.body) as List).map((conversation) {
          return OnlineFriendsResponseModel.fromJson(conversation);
        }).toList();

        return right(onlineFriendsResponse);
      } else {
        print('status code ${response.statusCode}');
        return left(const ApiFailure.serverFailure(
            errorMessage: "Something went wrong. Please try again later"));
      }
    } catch (e) {
      return left(const ApiFailure.clientFailure(
          errorMessage: 'Oops...Something went wrong.'));
    }
  }

  static Future<Either<ApiFailure, bool>> createNewSingleConversation(
      {required String friendId}) async {
    try {
      final response = await http.post(
        Uri.parse(Config.createNewSingleConversationApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
        body: jsonEncode(<String, List<String>>{
          "members": [friendId]
        }),
      );
      print('got response');
      if (response.statusCode == 200 || response.statusCode == 201) {
        return right(true);
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

  static Future<Either<ApiFailure, SentMessageResponseModel>> sentMessage({
    required String conversationId,
    required String message,
  }) async {
    try {
      final response = await http.post(
        Uri.parse(Config.sentMessageApi(conversationId: conversationId)),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
        body: jsonEncode(<String, String>{"content": message}),
      );
      print('got response');
      if (response.statusCode == 200 || response.statusCode == 201) {
        SentMessageResponseModel result =
            SentMessageResponseModel.fromJson(jsonDecode(response.body));
        return right(result);
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

  static Future<Either<ApiFailure, GetMessageResponseModel>> getMessage(
      {required String conversationId}) async {
    try {
      final response = await http.get(
        Uri.parse(Config.getMessageApi(conversationId: conversationId)),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
      );
      log(response.body);
      print(response.body);
      if (response.statusCode == 200) {
        GetMessageResponseModel getMessageResponse =
            GetMessageResponseModel.fromJson(jsonDecode(response.body));

        return right(getMessageResponse);
      } else {
        print('status code ${response.statusCode}');
        return left(const ApiFailure.serverFailure(
            errorMessage: "Something went wrong. Please try again later"));
      }
    } catch (e) {
      return left(const ApiFailure.clientFailure(
          errorMessage: 'Oops...Something went wrong.'));
    }
  }

  static Future<Either<ApiFailure, bool>> createGroupConversation(
      {required CreateGroupConversationRequestModel
          createGroupConversationRequest}) async {
    try {
      print('Register called');
      final response = await http.post(
        Uri.parse(Config.createGroupConversationApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
        body: jsonEncode(createGroupConversationRequest.toJson()),
      );
      print("Got response");
      if (response.statusCode == 200 || response.statusCode == 201) {
        return right(true);
      } else {
        log(response.statusCode.toString());
        log(response.body);
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

  static Future<Either<ApiFailure, LikeDislikeResponseModel>> likeOrDislike(
      {required String? postId}) async {
    try {
      final response = await http.patch(
        Uri.parse(Config.likeOrDislikePostApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
        body: jsonEncode({"postId": postId}),
      );
      print(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        LikeDislikeResponseModel result =
            LikeDislikeResponseModel.fromJson(jsonDecode(response.body));
        return right(result);
      } else {
        print('status code ${response.statusCode}');
        return left(const ApiFailure.serverFailure(
            errorMessage: "Something went wrong. Please try again later"));
      }
    } catch (e) {
      return left(const ApiFailure.clientFailure(
          errorMessage: 'Oops...Something went wrong.'));
    }
  }

  static Future<Either<ApiFailure, SharePostResponseModel>> sharePost(
      {required SharePostRequestModel sharePostRequest}) async {
    try {
      print('share post called');
      final response = await http.post(
        Uri.parse(Config.sharePostApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
        body: jsonEncode(sharePostRequest.toJson()),
      );
      print("Got response");
      if (response.statusCode == 200 || response.statusCode == 201) {
        SharePostResponseModel result =
            SharePostResponseModel.fromJson(jsonDecode(response.body));
        return right(result);
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

  static Future<Either<ApiFailure, SharePostAsMessageResponseModel>>
      sharePostAsMessage(
          {required SharePostAsMessageRequestModel
              sharePostAsMessageRequest}) async {
    try {
      final response = await http.patch(
        Uri.parse(Config.sharePostAsMessageApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
        body: jsonEncode(sharePostAsMessageRequest.toJson()),
      );
      print("Got response");
      if (response.statusCode == 200 || response.statusCode == 201) {
        SharePostAsMessageResponseModel result =
            SharePostAsMessageResponseModel.fromJson(jsonDecode(response.body));
        return right(result);
      } else {
        log(response.statusCode.toString());
        log(response.body);
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

  static Future<Either<ApiFailure, bool>> savePost(
      {required String? postId}) async {
    try {
      final response = await http.patch(
        Uri.parse(Config.savePostApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
        body: jsonEncode({"postId": postId}),
      );
      print(response.body);
      if (response.statusCode == 200 || response.statusCode == 201) {
        return right(true);
      } else {
        print('status code ${response.statusCode}');
        return left(const ApiFailure.serverFailure(
            errorMessage: "Something went wrong. Please try again later"));
      }
    } catch (e) {
      return left(const ApiFailure.clientFailure(
          errorMessage: 'Oops...Something went wrong.'));
    }
  }

  static Future<Either<ApiFailure, List<FriendsListResponseModel>>>
      getFriendsList() async {
    try {
      final response = await http.get(
        Uri.parse(Config.friendsListApi),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
      );

      print(response.body);
      if (response.statusCode == 200) {
        List<FriendsListResponseModel> friendsListResponse =
            (jsonDecode(response.body) as List).map((friendJson) {
          return FriendsListResponseModel.fromJson(friendJson);
        }).toList();

        return right(friendsListResponse);
      } else {
        print('status code ${response.statusCode}');
        return left(const ApiFailure.serverFailure(
            errorMessage: "Something went wrong. Please try again later"));
      }
    } catch (e) {
      return left(const ApiFailure.clientFailure(
          errorMessage: 'Oops...Something went wrong.'));
    }
  }

  static Future<String?> getAgoraToken(String channelName) async {
    try {
      print('get agora tocken called');
      final response = await http.post(
        Uri.parse(Config.agoraTokenApi),
        body: {"channelName": channelName},
        // headers: <String, String>{
        //   'Content-Type': 'application/json; charset=UTF-8',
        //   'Authorization': Config.bearerTocken,
        // },
      );

      print(response.body);
      if (response.statusCode == 200) {
        String token = jsonDecode(response.body)['key'];

        return token;
      } else {
        print('status code ${response.statusCode}');
        return null;
      }
    } catch (e) {
      print('inside  catch  bloc ');
      return null;
    }
  }

  static Future<Either<ApiFailure, VideoCallResponseModel>> videoCallApi(
      String conversationId) async {
    try {
      final response = await http.post(
        Uri.parse(Config.videoCallApi),
        body: {"conversationId": conversationId},
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
      );

      print(response.body);
      if (response.statusCode == 200) {
        VideoCallResponseModel result =
            VideoCallResponseModel.fromJson(jsonDecode(response.body));
        return right(result);
      } else {
        print('status code ${response.statusCode}');
        return left(const ApiFailure.serverFailure(
            errorMessage: "Something went wrong. Please try again later"));
      }
    } catch (e) {
      return left(const ApiFailure.clientFailure(
          errorMessage: 'Oops...Something went wrong.'));
    }
  }

////////////////////////////////////////////////////////////////////////////////////
  static Future<Either<ApiFailure, GetDetailsOfSinglePostResponseModel>>
      getDetailsOfSinglePost(
          {required String postId, bool? useAlternativeApi}) async {
    try {
      Response response = await http.get(
        Uri.parse(useAlternativeApi == true
            ? Config.getDetailsOfSinglePostApi2(postId: postId)
            : Config.getDetailsOfSinglePostApi(postId: postId)),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
          'Authorization': Config.bearerTocken,
        },
      );

      Map<String, dynamic> responseMap = jsonDecode(response.body);

      if (response.statusCode == 200 || response.statusCode == 201) {
        // if we got success response then check shared or not, if shared then fetch again with post id

        bool? isSharedPost = responseMap['shared'];

        if (isSharedPost == false) {
          GetDetailsOfSinglePostResponseModel getDetailsOfSinglePostResponse =
              GetDetailsOfSinglePostResponseModel.fromJson(responseMap);

          return right(getDetailsOfSinglePostResponse);
        } else if (isSharedPost == true) {
          String? id = responseMap['postId'];

          Either<ApiFailure, GetDetailsOfSinglePostResponseModel> result =
              await getDetailsOfSinglePost(postId: id!);
          return result.fold((failure) {
            return left(const ApiFailure.serverFailure(
                errorMessage:
                    'Something went wrong... Please try again later'));
          }, (success) {
            return right(success);
          });
        } else {
          String? id = responseMap['id'];

          Either<ApiFailure, GetDetailsOfSinglePostResponseModel> result =
              await getDetailsOfSinglePost(postId: id!);
          return result.fold((failure) {
            return left(const ApiFailure.serverFailure(
                errorMessage:
                    'Something went wrong... Please try again later'));
          }, (success) {
            return right(success);
          });
        }
      } else if (response.statusCode == 403) {
        Either<ApiFailure, GetDetailsOfSinglePostResponseModel> result =
            await getDetailsOfSinglePost(
                postId: postId, useAlternativeApi: true);
        return result.fold((failure) {
          return left(const ApiFailure.serverFailure(
              errorMessage: 'Something went wrong.. Please try again later'));
        }, (success) {
          return right(success);
        });
      } else {
        print('response.status code = ${response.statusCode}');
        return left(const ApiFailure.serverFailure(
            errorMessage: 'Something went wrong... Please try again later'));
      }
    } catch (e) {
      return left(const ApiFailure.clientFailure(
          errorMessage: 'OOPs.. Something went wrong...'));
    }
  }
}
