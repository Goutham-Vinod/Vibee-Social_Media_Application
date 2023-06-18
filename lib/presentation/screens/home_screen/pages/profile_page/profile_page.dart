import 'package:flutter/material.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/domain/models/get_current_user_details_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';
import 'package:vibee/infrastructure/shared_pref_services.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/common_widgets/post_widget.dart';

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
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: PostWidget(
                    postAssetImagePath: CommonVariables.testImagePath3,
                    dpAssetImagePath: CommonVariables.testImagePath6,
                    dateNTime: "28-05-2032 • Kerala",
                    profileName:
                        "${CommonVariables.currentUserDetailsResponse?.firstName} ${CommonVariables.currentUserDetailsResponse?.lastName}",
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
                "${CommonVariables.currentUserDetailsResponse?.firstName} ${CommonVariables.currentUserDetailsResponse?.lastName}",
                size: 25,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(height: 5),
              vibeeText(
                  "${CommonVariables.currentUserDetailsResponse?.username}"),
              const SizedBox(height: 3),
              Row(
                children: [
                  vibeeIconButton(
                    content: "Edit Profile",
                    onPressed: () async {
                      GetCurrentUserDetailsResponseModel? currentUserDetails =
                          await APIServices.GetCurrentUserDetailsResponse();
                      if (currentUserDetails != null) {
                        
                        Navigator.pushNamed(
                            context, RouteGenerator.editProfileScreen);
                      }
                    },
                    ico: Icons.edit,
                    height: 30,
                  ),
                  const SizedBox(width: 10),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        print("Saved Videos");
                      },
                      customBorder: const StadiumBorder(),
                      child: Container(
                        height: 30,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.bookmark_border_rounded,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Material(
                    color: Colors.transparent,
                    child: PopupMenuButton(
                      color: const Color.fromARGB(255, 46, 46, 46),
                      offset: const Offset(200, 10),
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
                          Navigator.pushNamedAndRemoveUntil(
                            context,
                            RouteGenerator.splashScreen,
                            (route) => false,
                          );
                        }
                      },
                      child: Container(
                        height: 30,
                        width: 35,
                        decoration: BoxDecoration(
                            color: Colors.white12,
                            borderRadius: BorderRadius.circular(10)),
                        child: const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ),
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
                image: AssetImage(CommonVariables.testImagePath6))), // Dp
        const Positioned(
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
