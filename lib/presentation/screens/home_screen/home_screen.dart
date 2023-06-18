import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/home_screen/home_screen_bloc.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/common_widgets/custom_bottom_nav_bar.dart';
import 'package:vibee/presentation/screens/home_screen/pages/elite_page/elite_page.dart';

import 'pages/discover_page/discover_page.dart';
import 'pages/home_page/home_page.dart';
import 'pages/messages_page/messages_page.dart';
import 'pages/notifications_page/notifications_page.dart';
import 'pages/profile_page/profile_page.dart';
import 'pages/search_page/search_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List pages = const [
    HomePage(),
    SearchPage(),
    DiscoverPage(),
    MessagesPage(),
    ProfilePage(),
    NotificationsPage(),
    VibeeElitePage(),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenBloc, HomeScreenState>(
      builder: (context, state) {
        return Scaffold(
          backgroundColor: backgroundScreenColor,
          body: pages[state.currentNavBarIndex],
          bottomNavigationBar:
              CustomBottomNavBar(bottomNavIndex: state.currentNavBarIndex),
        );
      },
    );
  }
}
