import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vibee/application/blocs/chat_screen/chat_screen_bloc.dart';
import 'package:vibee/application/blocs/comments_screen/comments_screen_bloc.dart';
import 'package:vibee/application/blocs/create_group_screen_1/create_group_screen_1_bloc.dart';
import 'package:vibee/application/blocs/create_group_screen_2/create_group_screen_2_bloc.dart';
import 'package:vibee/application/blocs/create_post_screen/create_post_screen_bloc.dart';
import 'package:vibee/application/blocs/discover_page/discover_page_bloc.dart';
import 'package:vibee/application/blocs/edit_profile_screen/edit_profile_screen_bloc.dart';
import 'package:vibee/application/blocs/friends_screen/friends_screen_bloc.dart';
import 'package:vibee/application/blocs/home_page/home_page_bloc.dart';
import 'package:vibee/application/blocs/home_screen/home_screen_bloc.dart';
import 'package:vibee/application/blocs/login_screen/login_screen_bloc.dart';
import 'package:vibee/application/blocs/messages_page/messages_page_bloc.dart';
import 'package:vibee/application/blocs/notifications_page/notification_page_bloc.dart';
import 'package:vibee/application/blocs/profile_page/profile_page_bloc.dart';
import 'package:vibee/application/blocs/register_screen_1/register_screen_1_bloc.dart';
import 'package:vibee/application/blocs/register_screen_2/register_screen_2_bloc.dart';
import 'package:vibee/application/blocs/saved_posts_screen/saved_posts_screen_bloc.dart';
import 'package:vibee/application/blocs/search_page/search_page_bloc.dart';
import 'package:vibee/application/blocs/video_call_screen/video_call_screen_bloc.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/infrastructure/notification_services.dart';
import 'package:vibee/infrastructure/socket_io_services.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await NotificationService.initializeNotification();
  SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
    statusBarColor: Colors.transparent,
  ));
  SocketIoServices.connectSocket();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  static GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ChatScreenBloc(),
        ),
        BlocProvider(
          create: (context) => CommentsScreenBloc(),
        ),
        BlocProvider(
          create: (context) => CreateGroupScreen_1Bloc(),
        ),
        BlocProvider(
          create: (context) => CreateGroupScreen_2Bloc(),
        ),
        BlocProvider(
          create: (context) => CreatePostScreenBloc(),
        ),
        BlocProvider(
          create: (context) => DiscoverPageBloc(),
        ),
        BlocProvider(
          create: (context) => EditProfileScreenBloc(),
        ),
        BlocProvider(
          create: (context) => HomePageBloc(),
        ),
        BlocProvider(
          create: (context) => HomeScreenBloc(),
        ),
        BlocProvider(
          create: (context) => LoginScreenBloc(),
        ),
        BlocProvider(
          create: (context) => MessagesPageBloc(),
        ),
        BlocProvider(
          create: (context) => NotificationPageBloc(),
        ),
        BlocProvider(
          create: (context) => ProfilePageBloc(),
        ),
        BlocProvider(
          create: (context) => RegisterScreen_1_Bloc(),
        ),
        BlocProvider(
          create: (context) => RegisterScreen_2_Bloc(),
        ),
        BlocProvider(
          create: (context) => SavedPostsScreenBloc(),
        ),
        BlocProvider(
          create: (context) => SearchPageBloc(),
        ),
        BlocProvider(
          create: (context) => FriendsScreenBloc(),
        ),
        BlocProvider(
          create: (context) => VideoCallScreenBloc(),
        ),
      ],
      child: MaterialApp(
        // home: const CallScreen(),
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        onGenerateRoute: RouteGenerator.generateRoute,
        theme: ThemeData(primaryColor: Colors.black),
      ),
    );
  }
}
