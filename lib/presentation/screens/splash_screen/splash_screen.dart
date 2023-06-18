import 'package:flutter/material.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/infrastructure/api_services.dart';
import 'package:vibee/infrastructure/shared_pref_services.dart';
import 'package:vibee/core/config.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

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
  print('Got token');
  await SharedPrefServices.getPhoneNumber();
  print('got phoneNumber');
  await SharedPrefServices.getUserId();
  print('get UserId');
  if (Config.tocken != null) {
    await APIServices.GetCurrentUserDetailsResponse();
  }
  if (Config.tocken != null) {
    print('tocken not null');
    Navigator.of(context).pushReplacementNamed(RouteGenerator.home);
  } else {
    print('login screen');
    Navigator.of(context).pushReplacementNamed(RouteGenerator.loginScreen);
  }
}
