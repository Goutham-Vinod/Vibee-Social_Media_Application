import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vibee/screens/home_screen.dart';

import '../common_variables.dart';
import '../widgets/common_widgets.dart';

class CreateGroupPage2 extends StatelessWidget {
  const CreateGroupPage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundScreenColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigatorPush(
            context: context,
            nextPage: HomeScreen(),
          );
        },
        backgroundColor: vibeePurple,
        child: Icon(Icons.done_rounded),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              children: [
                SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: Icon(Icons.arrow_back),
                  iconSize: 30,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                vibeeText("Create a group",
                    size: 25, fontWeight: FontWeight.w600),
              ],
            ),
            SizedBox(height: 30),
            vibeeTextFormField(
              width: 330,
              hint: "Search",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
                size: 25,
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 35),
                vibeeText("Selected Participants")
              ],
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      vibeeDp(
                          image:
                              AssetImage("${CommonVariables.testImagePath5}")),
                      SizedBox(height: 10),
                      vibeeText("Sophia Andrews"),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
