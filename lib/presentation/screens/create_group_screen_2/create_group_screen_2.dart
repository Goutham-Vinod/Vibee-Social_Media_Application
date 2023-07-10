import 'package:flutter/material.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/core/config.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

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
            const SizedBox(height: 15),
            InkWell(
              onTap: () {
                showVibeeModelBottomSheet(
                    context: context,
                    title: 'Change Profile Picture',
                    buttons: [
                      ElevatedButton(
                          onPressed: () {
                            print('pick image from gallery');
                          },
                          child: const Text('Gallery')),
                      ElevatedButton(
                          onPressed: () {
                            print('pick image from  Camera');
                          },
                          child: const Text('Camera'))
                    ]);
              },
              child: vibeeDp(height: 125, width: 125, image: profilePicture()),
            ),
            const SizedBox(height: 25),
            vibeeTextFormField(
              width: 330,
              hint: "Group name",
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

  ImageProvider profilePicture() {
    dynamic state = null; // move this state to parameter of thsi function
    if (state != null && state.isCurrentUserProfile) {
      print('current user updated');
      if (CommonVariables.currentUserDetailsResponse != null &&
          CommonVariables.currentUserDetailsResponse?.profilePicture != null) {
        return NetworkImage(Config.getPictureUrl(
            picturePath:
                CommonVariables.currentUserDetailsResponse!.profilePicture!));
      } else {
        return AssetImage(CommonVariables.defaultDp);
      }
    } else {
      if (state != null &&
          state.getUserDetailsResponse?.user?.profilePicture != null) {
        return NetworkImage(Config.getPictureUrl(
            picturePath: state.getUserDetailsResponse!.user!.profilePicture!));
      } else {
        return AssetImage(CommonVariables.defaultDp);
      }
    }
  }
}
