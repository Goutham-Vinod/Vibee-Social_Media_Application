import 'package:flutter/material.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/screens/change_password_screen/change_password_screen.dart';
import 'package:vibee/presentation/screens/chat_screen/chat_screen.dart';
import 'package:vibee/presentation/screens/comments_screen/comments_screen.dart';
import 'package:vibee/presentation/screens/create_group_screen_1/create_group_screen_1.dart';
import 'package:vibee/presentation/screens/create_group_screen_2/create_group_screen_2.dart';
import 'package:vibee/presentation/screens/create_post_screen/create_post_screen.dart';
import 'package:vibee/presentation/screens/edit_profile_screen/edit_profile_screen.dart';
import 'package:vibee/presentation/screens/email_input_screen/email_input_screen.dart';
import 'package:vibee/presentation/screens/friends_screen/friends_screen.dart';
import 'package:vibee/presentation/screens/home_screen/home_screen.dart';
import 'package:vibee/presentation/screens/home_screen/pages/profile_page/profile_page.dart';
import 'package:vibee/presentation/screens/login_screen/login_screen.dart';
import 'package:vibee/presentation/screens/otp_verification_screen/otp_verification_screen.dart';
import 'package:vibee/presentation/screens/register_screen_1/register_screen_1.dart';
import 'package:vibee/presentation/screens/register_screen_2/register_screen_2.dart';
import 'package:vibee/presentation/screens/saved_posts_screen/saved_posts_screen.dart';
import 'package:vibee/presentation/screens/splash_screen/splash_screen.dart';
import 'package:vibee/presentation/screens/verify_email_page/verify_email_page.dart';
import 'package:vibee/presentation/screens/video_call_screen.dart/video_call_screen.dart';

class RouteGenerator {
  static const String splashScreen = '/';
  static const String loginScreen = '/loginScreen';
  static const String registerScreen1 = '/registerScreen1';
  static const String registerScreen2 = '/registerScreen2';
  static const String otpVerificationScreen = '/otpVerificationScreen';
  static const String home = '/home';
  static const String createGroupScreen1 = '/createGroupScreen1';
  static const String createGroupScreen2 = '/createGroupScreen2';
  static const String chatScreen = '/chatScreen';
  static const String editProfileScreen = '/editProfileScreen';
  static const String profilePage = '/profilePage';
  static const String verifyEmailScreen = '/verifyEmailScreen';
  static const String emailInputScreen = '/emailInputScreen';
  static const String changePasswordScreen = '/changePasswordScreen';
  static const String commentsScreen = '/commentsSceen';
  static const String savedPostsScreen = '/savedPostsScreen';
  static const String friendsScreen = '/friendsScreen';
  static const String createPostScreen = '/createPostScreen';
  static const String callScreen = '/callScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case loginScreen:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      case registerScreen1:
        return MaterialPageRoute(builder: (_) => RegisterScreen());
      case registerScreen2:
        return MaterialPageRoute(
            builder: (_) => RegisterScreen2(),
            settings: RouteSettings(
              arguments: args,
            ));
      case otpVerificationScreen:
        return MaterialPageRoute(builder: (_) => OtpVerificationScreen());

      case home:
        return MaterialPageRoute(builder: (_) => HomeScreen());
      case createGroupScreen1:
        return MaterialPageRoute(builder: (_) => const CreateGroupScreen1());
      case createGroupScreen2:
        return MaterialPageRoute(
            builder: (_) => CreateGroupScreen2(),
            settings: RouteSettings(
              arguments: args,
            ));
      case chatScreen:
        return MaterialPageRoute(
            builder: (_) => ChatScreen(),
            settings: RouteSettings(
              arguments: args,
            ));
      case editProfileScreen:
        return MaterialPageRoute(builder: (_) => const EditProfileScreen());

      case profilePage:
        return MaterialPageRoute(
            builder: (_) => ProfilePage(),
            settings: RouteSettings(
              arguments: args,
            ));
      case emailInputScreen:
        return MaterialPageRoute(
          builder: (_) => EmailInputScreen(),
        );
      case verifyEmailScreen:
        return MaterialPageRoute(
            builder: (_) => VerifyEmailScreen(),
            settings: RouteSettings(
              arguments: args,
            ));
      case changePasswordScreen:
        return MaterialPageRoute(
            builder: (_) => ChangePasswordScreen(),
            settings: RouteSettings(
              arguments: args,
            ));
      case commentsScreen:
        return MaterialPageRoute(
            builder: (_) => CommentsScreen(),
            settings: RouteSettings(
              arguments: args,
            ));
      case savedPostsScreen:
        return MaterialPageRoute(
            builder: (_) => const SavedPostsScreen(),
            settings: RouteSettings(
              arguments: args,
            ));
      case friendsScreen:
        return MaterialPageRoute(
            builder: (_) => const FriendsScreen(),
            settings: RouteSettings(
              arguments: args,
            ));
      case createPostScreen:
        return MaterialPageRoute(
            builder: (_) => CreatePostScreen(),
            settings: RouteSettings(
              arguments: args,
            ));

      case callScreen:
        return MaterialPageRoute(
          builder: (_) => CallScreen(
            chatId: args as String,
          ),
        );

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                backgroundColor: backgroundScreenColor,
                body: Center(child: vibeeText("Error Page"))));
    }
  }
}
