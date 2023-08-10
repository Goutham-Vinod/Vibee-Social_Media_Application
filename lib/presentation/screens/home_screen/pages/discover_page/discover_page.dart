import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/discover_page/discover_page_bloc.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/common_widgets/post_widget.dart';
import 'package:vibee/presentation/common_widgets/share_post_modal_bottom_sheet.dart';

class DiscoverPage extends StatelessWidget {
  DiscoverPage({super.key});

  final TextEditingController descriptionController = TextEditingController();
  String privacy = 'public';

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<DiscoverPageBloc>(context)
        .add(const InitializeDiscoverPage());
    return BlocListener<DiscoverPageBloc, DiscoverPageState>(
      listener: (context, state) {
        if (state.errorMessage != null) {
          showSnackBar(
              context: context,
              message: state.errorMessage,
              backgroundColor: Colors.red,
              textColor: Colors.white);
        }
      },
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: backgroundScreenColor,
          automaticallyImplyLeading: false,
          title: vibeeLogo(size: 30),
          // actions: [
          //   // IconButton(
          //   //     onPressed: () {},
          //   //     icon: const Icon(Icons.notifications_outlined)),
          //   // IconButton(
          //   //     onPressed: () {}, icon: const Icon(Icons.verified_rounded)),
          // ],
        ),
        backgroundColor: backgroundScreenColor,
        body: BlocBuilder<DiscoverPageBloc, DiscoverPageState>(
          builder: (context, state) {
            return state.discoverResponse?.posts == null ||
                    state.discoverResponse!.posts!.isEmpty
                ? Center(child: vibeeText('No posts'))
                : ListView.builder(
                    itemCount: state.discoverResponse?.posts?.length ?? 0,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: PostWidget(
                          description: state.discoverResponse?.posts?[index]
                                  .description ??
                              '',
                          // createdByUserName:
                          //     state.discoverResponse?.posts[index].shared !=
                          //             true
                          //         ? null
                          //         : state.discoverResponse?.posts[index].postId!
                          //             .createdBy.username,
                          // createdByProfileName: state.discoverResponse?.posts[index].shared !=
                          //         true
                          //     ? null
                          //     : "${state.discoverResponse?.posts[index].postId!.createdBy.firstName} ${state.discoverResponse?.posts[index].postId!.createdBy.lastName}",
                          isDeleted:
                              state.discoverResponse?.posts?[index].isDeleted ??
                                  true,
                          username: state.discoverResponse!.posts![index]
                              .createdBy!.username!,
                          isLiked: state.likedPostIndexList.contains(index),
                          dpNetworkImageApiPath: state.discoverResponse
                              ?.posts?[index].createdBy?.profilePicture,
                          postNetworkImageUrl:
                              state.discoverResponse?.posts?[index].media,
                          profileName:
                              "${state.discoverResponse?.posts?[index].createdBy?.firstName} ${state.discoverResponse?.posts?[index].createdBy?.lastName}",
                          dateNTime:
                              state.discoverResponse?.posts?[index].createdAt,
                          place: state.discoverResponse?.posts?[index].location,
                          postId: state.discoverResponse!.posts![index].id!,
                          likeButtonOnTap: () {
                            BlocProvider.of<DiscoverPageBloc>(context).add(
                                DiscoverPageEvent.likePost(postIndex: index));
                          },
                          shareButtonOnTap: () {
                            sharePostModalBottomSheet(
                              context: context,
                              getAllConversationsResponseList:
                                  state.getAllConversationsResponseList,
                              sentButtonOnTap: (friendIndex) {
                                BlocProvider.of<DiscoverPageBloc>(context).add(
                                    DiscoverPageEvent.sharePostAsMessage(
                                        friendId: state
                                            .getAllConversationsResponseList?[
                                                index]
                                            .id,
                                        postId: state.discoverResponse
                                            ?.posts?[index].id));
                                Navigator.of(context).pop();
                              },
                              shareAsPostOnTap: () {
                                print('share as post clicked');
                                Navigator.of(context).pop();
                                sharePostDialog(
                                    context: context,
                                    postId: state
                                        .discoverResponse!.posts![index].id!);
                              },
                            );
                          },
                        ),
                      );
                    },
                  );
          },
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
                        child: BlocBuilder<DiscoverPageBloc, DiscoverPageState>(
                          builder: (context, state) {
                            return TextField(
                              controller: descriptionController,
                              onTap: () {
                                BlocProvider.of<DiscoverPageBloc>(context).add(
                                    const DiscoverPageEvent
                                        .resetIsEmptySharePostDescription());
                              },
                              style: TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                  labelText: 'Description',
                                  labelStyle: TextStyle(color: Colors.white),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
                                      borderSide: BorderSide(
                                        color: Colors.white,
                                        width: 1,
                                      )),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(10)),
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
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 200,
                        child: dropDownButton(),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      vibeeButton(
                        content: 'Share',
                        onPressed: () {
                          BlocProvider.of<DiscoverPageBloc>(context).add(
                              DiscoverPageEvent.sharePost(
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
                      SizedBox(width: 20),
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
}
