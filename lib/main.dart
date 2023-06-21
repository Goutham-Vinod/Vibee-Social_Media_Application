import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vibee/application/blocs/edit_profile_screen/edit_profile_screen_bloc.dart';
import 'package:vibee/application/blocs/home_screen/home_screen_bloc.dart';
import 'package:vibee/application/blocs/login_screen/login_screen_bloc.dart';
import 'package:vibee/application/blocs/notifications_page/notification_page_bloc.dart';
import 'package:vibee/application/blocs/profile_page/profile_page_bloc.dart';
import 'package:vibee/application/blocs/register_screen_1/register_screen_1_bloc.dart';
import 'package:vibee/application/blocs/register_screen_2/register_screen_2_bloc.dart';
import 'package:vibee/application/blocs/search_page/search_page_bloc.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/presentation/screens/home_screen/pages/profile_page/profile_page.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => EditProfileScreenBloc(),
        ),
        BlocProvider(
          create: (context) => HomeScreenBloc(),
        ),
        BlocProvider(
          create: (context) => LoginScreenBloc(),
        ),
        BlocProvider(
          create: (context) => RegisterScreen_1_Bloc(),
        ),
        BlocProvider(
          create: (context) => RegisterScreen_2_Bloc(),
        ),
        BlocProvider(
          create: (context) => SearchPageBloc(),
        ),
        BlocProvider(
          create: (context) => ProfilePageBloc(),
        ),
        BlocProvider(
          create: (context) => NotificationPageBloc(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
      ),
    );
  }
}
