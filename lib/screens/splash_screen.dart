import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:vibee/screens/home_screen.dart';
import 'package:vibee/services/config.dart';
import 'package:vibee/services/shared_pref_services.dart';
import '../widgets/common_widgets.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    splashScreenFunctions(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundScreenColor,
      body: Center(
        child: vibeeLogo(size: 50),
      ),
    );
  }
}

void splashScreenFunctions(context) async {
  await Future.delayed(const Duration(seconds: 3));
  await SharedPrefServices.getTocken();
  await SharedPrefServices.getPhoneNumber();
  await SharedPrefServices.getUserId();
  if (Config.tocken != null) {
    navigatorPush(context: context, nextPage: HomeScreen());
  } else {
    navigatorPush(context: context, nextPage: LoginScreen());
  }
}
