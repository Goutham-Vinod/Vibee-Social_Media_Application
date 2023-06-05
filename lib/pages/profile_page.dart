import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vibee/screens/splash_screen.dart';
import 'package:vibee/services/shared_pref_services.dart';

import '../common_variables.dart';
import '../widgets/common_widgets.dart';
import '../widgets/post_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundScreenColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            profileDetailsDisplayWidget(context),
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
                    profileName: "George Mathew",
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget profileDetailsDisplayWidget(context) {
    return Stack(
      children: [
        Column(
          // base layout
          children: [
            Container(
              height: 170,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(CommonVariables.testImagePath1),
                ),
              ),
            ),
            Container(
              height: 100,
              color: backgroundScreenColor2,
            ),
          ],
        ), //base laylout

        Positioned(
          // titles and buttons
          top: 175,
          left: 15,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              vibeeText(
                "George Mathew",
                size: 25,
                fontWeight: FontWeight.bold,
              ),
              SizedBox(height: 5),
              vibeeText("@george_123"),
              SizedBox(height: 3),
              Row(
                children: [
                  vibeeIconButton(
                    content: "Edit Profile",
                    onPressed: () {},
                    ico: Icons.edit,
                    height: 30,
                  ),
                  SizedBox(width: 10),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        print("Saved Videos");
                      },
                      customBorder: StadiumBorder(),
                      child: Container(
                        height: 30,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.bookmark_border_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Material(
                    color: Colors.transparent,
                    child: PopupMenuButton(
                      child: Container(
                        height: 30,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.white54,
                            borderRadius: BorderRadius.circular(10)),
                        child: Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ),
                      color: Color.fromARGB(255, 46, 46, 46),
                      offset: Offset(200, 10),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      itemBuilder: (itemBuildercontext) {
                        return [
                          PopupMenuItem(
                            value: "Log out",
                            child: vibeeText("Log out"),
                          ),
                          PopupMenuItem(
                            value: "Change theme",
                            child: vibeeText("Change theme"),
                          ),
                        ];
                      },
                      onSelected: (value) async {
                        if (value == 'Log out') {
                          await SharedPrefServices.removeAll();
                          navigatorPush(
                            context: context,
                            nextPage: SplashScreen(),
                          );
                        }
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ), // titles and buttons
        Positioned(
            // Dp
            right: 30,
            top: 100,
            child: vibeeDp(
                height: 125,
                width: 125,
                image: AssetImage("${CommonVariables.testImagePath6}"))), // Dp
        Positioned(
          right: 30,
          top: 190,
          child: Icon(
            Icons.camera_alt,
            size: 35,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
