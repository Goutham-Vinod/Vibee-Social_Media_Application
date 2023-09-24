import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/create_group_screen_2/create_group_screen_2_bloc.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/core/config.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/domain/models/friends_list_response_model/friends_list_response_model.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

class CreateGroupScreen2 extends StatelessWidget {
  CreateGroupScreen2({super.key});

  final TextEditingController groupNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final groupMembers = ModalRoute.of(context)?.settings.arguments as List<
        FriendsListResponseModel>?; // routeArgs - List<FriendsListResponseModel>

    BlocProvider.of<CreateGroupScreen_2Bloc>(context).add(
        CreateGroupScreen_2Event.initializePage(
            selectedGroupMembersList: [...?groupMembers]));

    return BlocListener<CreateGroupScreen_2Bloc, CreateGroupScreen_2State>(
      listener: (context, state) {
        if (state.isGroupCreated == true) {
          Navigator.pushNamedAndRemoveUntil(
              context, RouteGenerator.home, (route) => false);
        }

        if (state.errorMessage != null) {
          showSnackBar(context: context, message: state.errorMessage);
        }
      },
      child: Scaffold(
        backgroundColor: backgroundScreenColor,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CreateGroupScreen_2Bloc>(context).add(
                CreateGroupScreen_2Event.createGroup(
                    groupName: groupNameController.text));
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
              // InkWell(
              //   onTap: () {
              //     showVibeeModelBottomSheet(
              //         context: context,
              //         title: 'Change Profile Picture',
              //         buttons: [
              //           ElevatedButton(
              //               onPressed: () {
              //                 print('pick image from gallery');
              //               },
              //               child: const Text('Gallery')),
              //           ElevatedButton(
              //               onPressed: () {
              //                 print('pick image from  Camera');
              //               },
              //               child: const Text('Camera'))
              //         ]);
              //   },
              //   child:
              //       vibeeDp(height: 125, width: 125, image: profilePicture()),
              // ),
              const SizedBox(height: 25),
              vibeeTextFormField(
                  width: 330,
                  hint: "Group name",
                  textController: groupNameController),
              const SizedBox(height: 30),
              Row(
                children: [
                  const SizedBox(width: 35),
                  vibeeText("Selected Participants")
                ],
              ),
              Expanded(
                child: BlocBuilder<CreateGroupScreen_2Bloc,
                    CreateGroupScreen_2State>(
                  builder: (context, state) {
                    return GridView.builder(
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 3),
                      itemCount: state.selectedGroupMembersList?.length ?? 0,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            vibeeDp(
                                image:
                                    AssetImage(CommonVariables.testImagePath5)),
                            const SizedBox(height: 10),
                            vibeeText(
                                '${state.selectedGroupMembersList?[index].firstName} ${state.selectedGroupMembersList?[index].lastName}'),
                          ],
                        );
                      },
                    );
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  ImageProvider profilePicture() {
    dynamic state; // move this state to parameter of thsi function
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
