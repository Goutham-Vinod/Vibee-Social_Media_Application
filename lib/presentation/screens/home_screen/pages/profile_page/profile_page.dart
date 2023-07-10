import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/profile_page/profile_page_bloc.dart';
import 'package:vibee/core/config.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/core/routing/routing_arguments/profile_page_arguments.dart';
import 'package:vibee/domain/models/get_current_user_details_response_model/get_current_user_details_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';
import 'package:vibee/infrastructure/shared_pref_services.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/common_widgets/post_widget.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context) != null &&
            ModalRoute.of(context)?.settings != null &&
            ModalRoute.of(context)?.settings.arguments != null
        ? ModalRoute.of(context)?.settings.arguments as ProfilePageArguments
        : null;
    //bool isCurrentUserProfile = true;
    bool isCurrentUserProfile = routeArgs?.isCurrentUserProfile ?? true;

    if (isCurrentUserProfile == false) {
      final routeArgs =
          ModalRoute.of(context)?.settings.arguments as ProfilePageArguments;
      String? username = routeArgs.username;
      BlocProvider.of<ProfilePageBloc>(context)
          .add(ProfilePageEvent.initializeProfilePageBloc(
        username: username,
        isCurrentUserProfile: false,
      ));
    } else {
      BlocProvider.of<ProfilePageBloc>(context)
          .add(const ProfilePageEvent.initializeProfilePageBloc(
        isCurrentUserProfile: true,
      ));
    }
    print('isCurrentUserProfile = $isCurrentUserProfile');
    return BlocListener<ProfilePageBloc, ProfilePageState>(
      listener: (context, state) {},
      child: Scaffold(
        backgroundColor: backgroundScreenColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              profileDetailsDisplayWidget(context),
              BlocBuilder<ProfilePageBloc, ProfilePageState>(
                builder: (context, state) {
                  return ListView.builder(
                    itemCount:
                        state.getPostByOneUserResponse?.posts?.length ?? 0,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5),
                        child: PostWidget(
                          description: state.getPostByOneUserResponse
                                  ?.posts?[index].description ??
                              '',
                          dpNetworkImageApiPath: state.profilePicture,
                          postNetworkImageUrl: state
                              .getPostByOneUserResponse?.posts?[index].media,
                          dateNTime: state.getPostByOneUserResponse
                              ?.posts?[index].createdAt,
                          profileName: "${state.firstName} ${state.lastName}",
                          place: state
                              .getPostByOneUserResponse?.posts?[index].location,
                          postId:
                              state.getPostByOneUserResponse!.posts![index].id!,
                        ),
                      );
                    },
                  );
                },
              ),
            ],
          ),
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
            BlocBuilder<ProfilePageBloc, ProfilePageState>(
              builder: (context, state) {
                return InkWell(
                  onTap: () {
                    showVibeeModelBottomSheet(
                        context: context,
                        title: 'Change Cover Picture',
                        buttons: [
                          ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<ProfilePageBloc>(context).add(
                                    const ProfilePageEvent
                                        .updateCoverPictureFromStorage());
                              },
                              child: const Text('Gallery')),
                          ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<ProfilePageBloc>(context).add(
                                    const ProfilePageEvent
                                        .updateCoverPictureUsingCamera());
                              },
                              child: const Text('Camera'))
                        ]);
                  },
                  child: Container(
                    height: 170,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: CoverPicture(state), // cover pic
                      ),
                    ),
                  ),
                );
              },
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
              BlocBuilder<ProfilePageBloc, ProfilePageState>(
                builder: (context, state) {
                  return vibeeText(
                    "${state.firstName} ${state.lastName}",
                    size: 25,
                    fontWeight: FontWeight.bold,
                  );
                },
              ),
              const SizedBox(height: 5),
              BlocBuilder<ProfilePageBloc, ProfilePageState>(
                builder: (context, state) {
                  return vibeeText(state.username);
                },
              ),
              const SizedBox(height: 3),
              Row(
                children: [
                  BlocBuilder<ProfilePageBloc, ProfilePageState>(
                    builder: (context, state) {
                      if (state.isCurrentUserProfile) {
                        return vibeeIconButton(
                          content: "Edit Profile",
                          onPressed: () async {
                            GetCurrentUserDetailsResponseModel?
                                currentUserDetails = await APIServices
                                    .GetCurrentUserDetailsResponse();
                            if (currentUserDetails != null) {
                              Navigator.pushNamed(
                                  context, RouteGenerator.editProfileScreen);
                            }
                          },
                          ico: Icons.edit,
                          height: 30,
                        );
                      } else if (state.isFriend == true) {
                        return vibeeIconButton(
                          content: "Unfriend",
                          onPressed: () async {
                            BlocProvider.of<ProfilePageBloc>(context)
                                .add(ProfilePageEvent.unFriend());
                          },
                          ico: Icons.person,
                          height: 30,
                        );
                      } else if (state.isFriendRequestRecieved == true) {
                        return vibeeIconButton(
                          content: "Accept Friend Request",
                          onPressed: () async {
                            BlocProvider.of<ProfilePageBloc>(context)
                                .add(ProfilePageEvent.acceptFriendRequest());
                          },
                          ico: Icons.person,
                          height: 30,
                        );
                      } else if (state.isFriendRequestSent == false) {
                        return vibeeIconButton(
                          content: "Sent Friend Request",
                          onPressed: () async {
                            BlocProvider.of<ProfilePageBloc>(context)
                                .add(ProfilePageEvent.sentFriendRequest());
                          },
                          ico: Icons.person,
                          height: 30,
                        );
                      } else if (state.isFriendRequestSent == true) {
                        return vibeeIconButton(
                          content: "Cancel Friend Request",
                          onPressed: () async {
                            BlocProvider.of<ProfilePageBloc>(context)
                                .add(ProfilePageEvent.cancelFriendRequest());
                          },
                          ico: Icons.person,
                          height: 30,
                        );
                      } else {
                        return vibeeIconButton(
                          content: "   ",
                          onPressed: () async {
                            print('error');
                          },
                          ico: Icons.person,
                          height: 30,
                        );
                      }
                    },
                  ),
                  const SizedBox(width: 10),
                  Material(
                    color: Colors.transparent,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(
                            context, RouteGenerator.savedPostsScreen);
                      },
                      customBorder: const StadiumBorder(),
                      child: BlocBuilder<ProfilePageBloc, ProfilePageState>(
                        builder: (context, state) {
                          return Visibility(
                            visible: state.isCurrentUserProfile,
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
                          );
                        },
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
                          PopupMenuItem(
                            value: "View Friends",
                            child: vibeeText("View Friends"),
                          ),
                        ];
                      },
                      onSelected: (value) async {
                        switch (value) {
                          case 'Log out':
                            await SharedPrefServices.removeAll();
                            Navigator.pushNamedAndRemoveUntil(
                              context,
                              RouteGenerator.splashScreen,
                              (route) => false,
                            );
                            break;
                          case 'View Friends':
                            Navigator.pushNamed(
                              context,
                              RouteGenerator.friendsScreen,
                            );
                            break;
                          default:
                        }
                      },
                      child: BlocBuilder<ProfilePageBloc, ProfilePageState>(
                        builder: (context, state) {
                          return Visibility(
                            visible: state.isCurrentUserProfile,
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
                          );
                        },
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
            child: BlocBuilder<ProfilePageBloc, ProfilePageState>(
              builder: (context, state) {
                print('dp updated');
                return InkWell(
                  onTap: () {
                    showVibeeModelBottomSheet(
                        context: context,
                        title: 'Change Profile Picture',
                        buttons: [
                          ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<ProfilePageBloc>(context).add(
                                    const ProfilePageEvent
                                        .updateProfilePictureFromStorage());
                              },
                              child: const Text('Gallery')),
                          ElevatedButton(
                              onPressed: () {
                                BlocProvider.of<ProfilePageBloc>(context).add(
                                    const ProfilePageEvent
                                        .updateProfilePictureUsingCamera());
                              },
                              child: const Text('Camera'))
                        ]);
                  },
                  child: vibeeDp(
                      height: 125, width: 125, image: ProfilePicture(state)),
                );
              },
            )), // Dp
        BlocBuilder<ProfilePageBloc, ProfilePageState>(
          builder: (context, state) {
            return Visibility(
              visible: state.isCurrentUserProfile,
              child: const Positioned(
                right: 30,
                top: 190,
                child: Icon(
                  Icons.camera_alt,
                  size: 35,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  ImageProvider CoverPicture(ProfilePageState state) {
    if (state.isCurrentUserProfile) {
      if (CommonVariables.currentUserDetailsResponse != null &&
          CommonVariables.currentUserDetailsResponse?.coverPicture != null) {
        return NetworkImage(Config.getPictureUrl(
            picturePath:
                CommonVariables.currentUserDetailsResponse!.coverPicture!));
      } else {
        return AssetImage(CommonVariables.testImageBg);
      }
    } else {
      if (state.getUserDetailsResponse?.user?.coverPicture != null) {
        return NetworkImage(Config.getPictureUrl(
            picturePath: state.getUserDetailsResponse!.user!.coverPicture!));
      } else {
        return AssetImage(CommonVariables.testImagePath1);
      }
    }
  }

  ImageProvider ProfilePicture(ProfilePageState state) {
    if (state.isCurrentUserProfile) {
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
      if (state.getUserDetailsResponse?.user?.profilePicture != null) {
        return NetworkImage(Config.getPictureUrl(
            picturePath: state.getUserDetailsResponse!.user!.profilePicture!));
      } else {
        return AssetImage(CommonVariables.defaultDp);
      }
    }
  }
}
