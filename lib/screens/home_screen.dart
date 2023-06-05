import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vibee/common_variables.dart';
import 'package:vibee/pages/elite_page.dart';
import 'package:vibee/pages/notifications_page.dart';

import '../pages/discover_page.dart';
import '../pages/home_page.dart';
import '../pages/messages_page.dart';
import '../pages/profile_page.dart';
import '../pages/search_page.dart';
import '../widgets/common_widgets.dart';
import '../widgets/custom_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List pages = [
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
    return Scaffold(
      backgroundColor: backgroundScreenColor,
      body: ValueListenableBuilder(
        valueListenable: CommonVariables.bottomNavIndexNotifier,
        builder: (context, value, child) {
          return pages[value];
        },
      ),
      bottomNavigationBar: ValueListenableBuilder(
        valueListenable: CommonVariables.bottomNavIndexNotifier,
        builder: (context, value, child) {
          return CustomBottomNavBar(bottomNavIndex: value);
        },
      ),
    );
  }
}
