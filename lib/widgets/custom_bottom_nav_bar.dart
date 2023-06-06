import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vibee/common_variables.dart';

import 'common_widgets.dart';

class CustomBottomNavBar extends StatelessWidget {
  CustomBottomNavBar({super.key, required this.bottomNavIndex});
  final int bottomNavIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          border: Border(
              top: BorderSide(
            width: 0,
            color: Colors.white,
          )),
          color: backgroundScreenColor),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          customBottomNavIcon(
            index: 0,
            selectedPath: "assets/icons/Home_filled.png",
            unSelectedPath: "assets/icons/Home_outlined.png",
          ),
          customBottomNavIcon(
              index: 1,
              selectedPath: "assets/icons/Search_filled.png",
              unSelectedPath: "assets/icons/search.png"),
          customBottomNavIcon(
            index: 2,
            selectedPath: "assets/icons/Compass_fill.png",
            unSelectedPath: "assets/icons/Compass.png",
          ),
          customBottomNavIcon(
            index: 3,
            selectedPath: "assets/icons/Chat_alt_2_fill.png",
            unSelectedPath: "assets/icons/Chat_alt.png",
          ),
          customBottomNavIcon(
            index: 4,
            selectedPath: "assets/icons/AccountCircleFilled.png",
            unSelectedPath: "assets/icons/AccountCircleOutlined.png",
          ),
        ],
      ),
    );
  }

  Widget customBottomNavIcon({
    required int index,
    required String selectedPath,
    double? selectedHeight,
    double? unSelectedHeight,
    double? selectedWidth,
    double? unSelectedWidth,
    required String unSelectedPath,
  }) {
    return InkWell(
      onTap: () {
        CommonVariables.bottomNavIndexNotifier.value = index;
      },
      child: bottomNavIndex == index
          ? Image.asset(
              "$selectedPath",
              height: selectedHeight ?? 50,
              width: selectedWidth,
            )
          : Image.asset(
              "$unSelectedPath",
              height: unSelectedHeight ?? 50,
              width: unSelectedWidth,
            ),
    );
  }
}
