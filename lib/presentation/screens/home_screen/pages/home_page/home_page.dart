import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/home_page/home_page_bloc.dart';
import 'package:vibee/application/blocs/home_screen/home_screen_bloc.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/common_widgets/post_widget.dart';
import 'package:vibee/presentation/common_widgets/share_post_modal_bottom_sheet.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController descriptionController = TextEditingController();
  String privacy = 'public';

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<HomePageBloc>(context)
        .add(const HomePageEvent.initializeHomePage());
    return BlocListener<HomePageBloc, HomePageState>(
      listener: (context, state) {
        if (state.errorMessage != null) {
          showSnackBar(
              context: context,
              message: state.errorMessage,
              backgroundColor: Colors.red,
              textColor: Colors.white);
        }
        if (state.showMessage != null) {
          showSnackBar(context: context, message: state.showMessage);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundScreenColor,
          automaticallyImplyLeading: false,
          title: vibeeLogo(size: 30),
          actions: [
            IconButton(
                onPressed: () {
                  BlocProvider.of<HomeScreenBloc>(context).add(
                      const ChangeBottomNavBarIndex(
                          selectedBottomNavBarIndex: 5));
                  // CommonVariables.bottomNavIndexNotifier.value = 5;
                },
                icon: const Icon(Icons.notifications_outlined)),
            // IconButton(
            //     onPressed: () {
            //       // CommonVariables.bottomNavIndexNotifier.value = 6;
            //       BlocProvider.of<HomeScreenBloc>(context).add(
            //           const ChangeBottomNavBarIndex(
            //               selectedBottomNavBarIndex: 6));
            //     },
            //     icon: const Icon(Icons.verified_rounded)),
          ],
        ),
        backgroundColor: backgroundScreenColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              whatsOnYourMind(context),
              BlocBuilder<HomePageBloc, HomePageState>(
                builder: (context, state) {
                  return state.getPostsResponse?.posts?.length == null
                      ? SizedBox(
                          height: 500,
                          child: Center(child: vibeeText('No posts to show')))
                      : ListView.builder(
                          itemCount: state.getPostsResponse?.posts?.length ?? 0,
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.symmetric(vertical: 10),
                              child: PostWidget(
                                description: state.getPostsResponse
                                        ?.posts?[index].description ??
                                    '',
                                createdByUserName: state.getPostsResponse
                                            ?.posts?[index].shared !=
                                        true
                                    ? null
                                    : state.getPostsResponse?.posts?[index]
                                        .postId!.createdBy?.username,
                                createdByProfileName: state.getPostsResponse
                                            ?.posts?[index].shared !=
                                        true
                                    ? null
                                    : "${state.getPostsResponse?.posts![index].postId!.createdBy?.firstName} ${state.getPostsResponse?.posts![index].postId!.createdBy?.lastName}",
                                isDeleted: state
                                    .getPostsResponse!.posts![index].isDeleted!,
                                isLiked:
                                    state.likedPostIndexList.contains(index),
                                username: state.getPostsResponse!.posts![index]
                                    .createdBy!.username!,
                                dpNetworkImageApiPath: state.getPostsResponse
                                    ?.posts![index].createdBy!.profilePicture,
                                postNetworkImageUrl: state.getPostsResponse
                                            ?.posts![index].shared ==
                                        true
                                    ? state.getPostsResponse?.posts![index]
                                        .postId!.media
                                    : state
                                        .getPostsResponse?.posts![index].media,
                                dateNTime: state
                                    .getPostsResponse?.posts![index].createdAt,
                                place: state
                                    .getPostsResponse?.posts![index].location,
                                profileName:
                                    '${state.getPostsResponse?.posts![index].createdBy?.firstName} ${state.getPostsResponse?.posts![index].createdBy?.lastName}',
                                postId:
                                    state.getPostsResponse!.posts![index].id!,
                                likeButtonOnTap: () {
                                  BlocProvider.of<HomePageBloc>(context).add(
                                      HomePageEvent.likePost(postIndex: index));
                                },
                                shareButtonOnTap: () {
                                  sharePostModalBottomSheet(
                                    context: context,
                                    getAllConversationsResponseList:
                                        state.getAllConversationsResponseList,
                                    sentButtonOnTap: (friendIndex) {
                                      BlocProvider.of<HomePageBloc>(context)
                                          .add(HomePageEvent.sharePostAsMessage(
                                              friendId: state
                                                  .getAllConversationsResponseList?[
                                                      friendIndex]
                                                  .id,
                                              postId: state.getPostsResponse
                                                  ?.posts![index].id));
                                      Navigator.of(context).pop();
                                    },
                                    shareAsPostOnTap: () {
                                      print('share as post clicked');
                                      Navigator.of(context).pop();
                                      sharePostDialog(
                                          context: context,
                                          postId: state.getPostsResponse!
                                              .posts![index].id!);
                                    },
                                  );
                                },
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

  sharePostDialog({required BuildContext context, required String postId}) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          contentPadding: const EdgeInsets.all(0),
          content: Container(
              color: backgroundScreenColor2,
              height: 300,
              width: 300,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: vibeeText('Share Post',
                            fontWeight: FontWeight.bold, size: 25),
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 200,
                        child: BlocBuilder<HomePageBloc, HomePageState>(
                          builder: (context, state) {
                            return TextField(
                              controller: descriptionController,
                              onTap: () {
                                BlocProvider.of<HomePageBloc>(context).add(
                                    const HomePageEvent
                                        .resetIsEmptySharePostDescription());
                              },
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  labelText: 'Description',
                                  labelStyle:
                                      const TextStyle(color: Colors.white),
                                  focusedBorder: const OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 1,
                                      )),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(10)),
                                      borderSide: BorderSide(
                                        color:
                                            state.isSharePostDescriptionEmpty ==
                                                    true
                                                ? Colors.red
                                                : Colors.white,
                                        width: 1,
                                      ))),
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 200,
                        child: dropDownButton(),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      vibeeButton(
                        content: 'Share',
                        onPressed: () {
                          BlocProvider.of<HomePageBloc>(context).add(
                              HomePageEvent.sharePost(
                                  postId: postId,
                                  description: descriptionController.text,
                                  privacy: privacy));
                          print('shared');
                          print(descriptionController.text);
                          if (descriptionController.text.isNotEmpty) {
                            Navigator.pop(context);
                            print('poped');
                          }
                          ////////////////
                        },
                        height: 40,
                        width: 100,
                      ),
                      const SizedBox(width: 20),
                    ],
                  )
                ],
              )),
        );
      },
    );
  }

  Widget dropDownButton() {
    return InputDecorator(
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(color: Colors.white)),
        contentPadding: const EdgeInsets.all(10),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton(
          dropdownColor: backgroundScreenColor2,
          isExpanded: true,
          hint: Row(
            children: [
              vibeeText('Privacy'),
            ],
          ),
          items: [
            DropdownMenuItem(value: 'private', child: vibeeText('Private')),
            DropdownMenuItem(value: 'public', child: vibeeText('Public'))
          ],
          onChanged: (value) {
            print(value);
          },
        ),
      ),
    );
  }

  Widget whatsOnYourMind(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Container(
          color: backgroundScreenColor2,
          height: 100,
        ),
        Padding(
          padding: EdgeInsets.only(left: width * .01, top: 15.0),
          child: const Icon(
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
                // print("What's on your mind?");
                Navigator.of(context)
                    .pushNamed(RouteGenerator.createPostScreen);
              },
              child: Container(
                height: 60,
                width: width * .8, //300,
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topRight: Radius.circular(10),
                    bottomLeft: Radius.circular(10),
                  ),
                  border: Border.all(width: 2, color: Colors.white),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: vibeeText("Whats on your mind ?"),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
