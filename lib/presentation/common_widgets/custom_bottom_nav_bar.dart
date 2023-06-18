import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/home_screen/home_screen_bloc.dart';

import 'common_widgets.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key, required this.bottomNavIndex});
  final int bottomNavIndex;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: const BoxDecoration(
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
            context: context,
            index: 0,
            selectedPath: "assets/icons/Home_filled.png",
            unSelectedPath: "assets/icons/Home_outlined.png",
          ),
          customBottomNavIcon(
              context: context,
              index: 1,
              selectedPath: "assets/icons/Search_filled.png",
              unSelectedPath: "assets/icons/search.png"),
          customBottomNavIcon(
            context: context,
            index: 2,
            selectedPath: "assets/icons/Compass_fill.png",
            unSelectedPath: "assets/icons/Compass.png",
          ),
          customBottomNavIcon(
            context: context,
            index: 3,
            selectedPath: "assets/icons/Chat_alt_2_fill.png",
            unSelectedPath: "assets/icons/Chat_alt.png",
          ),
          customBottomNavIcon(
            context: context,
            index: 4,
            selectedPath: "assets/icons/AccountCircleFilled.png",
            unSelectedPath: "assets/icons/AccountCircleOutlined.png",
          ),
        ],
      ),
    );
  }

  Widget customBottomNavIcon({
    required context,
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
        BlocProvider.of<HomeScreenBloc>(context)
            .add(ChangeBottomNavBarIndex(selectedBottomNavBarIndex: index));
      },
      child: bottomNavIndex == index
          ? Image.asset(
              selectedPath,
              height: selectedHeight ?? 50,
              width: selectedWidth,
            )
          : Image.asset(
              unSelectedPath,
              height: unSelectedHeight ?? 50,
              width: unSelectedWidth,
            ),
    );
  }
}
