import 'package:flutter/material.dart';

class VibeeIcon {
  static addPersonButton(
          {required bool isAdded, double? width, double? height}) =>
      isAdded
          ? Image.asset(
              'assets/icons/person_tick.svg',
              width: width,
              height: height,
            )
          : Image.asset(
              'assets/icons/person_plus.svg',
              width: width,
              height: height,
            );
}
