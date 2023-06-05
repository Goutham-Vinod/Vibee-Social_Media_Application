import 'package:flutter/material.dart';
import 'package:vibee/common_variables.dart';

import '../widgets/common_widgets.dart';
import '../widgets/post_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundScreenColor,
        automaticallyImplyLeading: false,
        title: vibeeLogo(size: 30),
        actions: [
          IconButton(
              onPressed: () {
                CommonVariables.bottomNavIndexNotifier.value = 5;
              },
              icon: Icon(Icons.notifications_outlined)),
          IconButton(
              onPressed: () {
                CommonVariables.bottomNavIndexNotifier.value = 6;
              },
              icon: Icon(Icons.verified_rounded)),
        ],
      ),
      backgroundColor: backgroundScreenColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            whatsOnYourMind(),
            ListView.builder(
              itemCount: 5,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: PostWidget(
                    postAssetImagePath: CommonVariables.testImagePath3,
                    dpAssetImagePath: CommonVariables.testImagePath6,
                    dateNTime: "28-05-2032 • Kerala",
                    profileName: "Mr_Photographer_123",
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget whatsOnYourMind() {
    return Stack(
      children: [
        Container(
          color: backgroundScreenColor2,
          height: 100,
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Icon(
            Icons.account_circle_rounded,
            size: 50,
            color: Colors.white,
          ),
        ),
        Positioned(
          right: 20,
          top: 20,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                print("What's on your mind?");
              },
              child: Container(
                height: 60,
                width: 300,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: vibeeText("Whats on your mind ?"),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  border: Border.all(width: 2, color: Colors.white),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
