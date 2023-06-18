import 'package:flutter/material.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/screens/home_screen/home_screen.dart';

class CreateGroupScreen2 extends StatelessWidget {
  const CreateGroupScreen2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundScreenColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context, RouteGenerator.home);
         
        },
        backgroundColor: vibeePurple,
        child: const Icon(Icons.done_rounded),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              children: [
                const SizedBox(width: 10),
                IconButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  icon: const Icon(Icons.arrow_back),
                  iconSize: 30,
                  color: Colors.white,
                ),
                const SizedBox(width: 10),
                vibeeText("Create a group",
                    size: 25, fontWeight: FontWeight.w600),
              ],
            ),
            const SizedBox(height: 30),
            vibeeTextFormField(
              width: 330,
              hint: "Search",
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 25,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                const SizedBox(width: 35),
                vibeeText("Selected Participants")
              ],
            ),
            Expanded(
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      vibeeDp(
                          image: AssetImage(CommonVariables.testImagePath5)),
                      const SizedBox(height: 10),
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
