import 'package:flutter/material.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/screens/chat_screen/chat_screen.dart';
import 'package:vibee/presentation/screens/edit_profile_screen/edit_profile_screen.dart';
import 'package:vibee/presentation/screens/home_screen/home_screen.dart';
import 'package:vibee/presentation/screens/home_screen/pages/create_group_screen_1/create_group_screen_1.dart';
import 'package:vibee/presentation/screens/home_screen/pages/create_group_screen_2/create_group_screen_2.dart';
import 'package:vibee/presentation/screens/home_screen/pages/profile_page/profile_page.dart';
import 'package:vibee/presentation/screens/login_screen/login_screen.dart';
import 'package:vibee/presentation/screens/otp_verification_screen/otp_verification_screen.dart';
import 'package:vibee/presentation/screens/register_screen_1/register_screen_1.dart';
import 'package:vibee/presentation/screens/register_screen_2/register_screen_2.dart';
import 'package:vibee/presentation/screens/splash_screen/splash_screen.dart';

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
        return MaterialPageRoute(builder: (_) => const CreateGroupScreen2());
      case chatScreen:
        return MaterialPageRoute(builder: (_) => ChatScreen());
      case editProfileScreen:
        return MaterialPageRoute(builder: (_) => EditProfileScreen());
      case profilePage:
        return MaterialPageRoute(
            builder: (_) => ProfilePage(),
            settings: RouteSettings(
              arguments: args,
            ));

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                backgroundColor: backgroundScreenColor,
                body: Center(child: vibeeText("Error Page"))));
    }
  }
}
