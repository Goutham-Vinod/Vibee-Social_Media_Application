import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/edit_profile_screen/edit_profile_screen_bloc.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

class EditProfileScreenWidgets {
  static DateTime? selectedDob;
  static Future showDatePickerDialog(context) async {
    return showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          // actionsPadding: EdgeInsets.all(10),
          backgroundColor: backgroundScreenColor2,
          actions: [
            SizedBox(
              height: 150,
              // width: 500,
              child: CupertinoTheme(
                data: const CupertinoThemeData(
                  textTheme: CupertinoTextThemeData(
                    dateTimePickerTextStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                    ),
                  ),
                ),
                child: CupertinoDatePicker(
                  dateOrder: DatePickerDateOrder.dmy,
                  mode: CupertinoDatePickerMode.date,
                  initialDateTime: DateTime.now(),
                  onDateTimeChanged: (DateTime newDateTime) {
                    selectedDob = newDateTime;
                  },
                ),
              ),
            ),
            vibeeButton(
              content: "OK",
              onPressed: () {
                if (selectedDob != null) {
                  BlocProvider.of<EditProfileScreenBloc>(context).add(
                      EditProfileScreenEvent.refreshDobUi(dob: selectedDob!));
                }
                Navigator.of(context).pop();
              },
            )
          ],
        );
      },
    );
  }
}
