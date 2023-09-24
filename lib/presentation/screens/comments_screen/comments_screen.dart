import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/comments_screen/comments_screen_bloc.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/core/routing/routing_arguments/comments__screen_arguments.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/common_widgets/post_widget.dart';
import 'package:vibee/presentation/common_widgets/share_post_modal_bottom_sheet.dart';

class CommentsScreen extends StatelessWidget {
  CommentsScreen({super.key});

  final TextEditingController commentController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();

 String privacy = 'public';

  @override
  Widget build(BuildContext context) {
     
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as CommentsScreenArguments;
    String postId = routeArgs.postId;
    bool isLiked = routeArgs.isLiked;
    BlocProvider.of<CommentsScreenBloc>(context).add(
        CommentsScreenEvent.initalizeCommentsScreen(
            postId: postId, isLiked: isLiked));

    return BlocBuilder<CommentsScreenBloc, CommentsScreenState>(
      builder: (context, state) {
        return Scaffold(
            // resizeToAvoidBottomInset: false,
            backgroundColor: backgroundScreenColor,
            body: Stack(
              children: [
                SizedBox(
                  height: 735,
                  child: SingleChildScrollView(
                    //   padding: const EdgeInsets.only(top: 75),
                    child: Column(
                      children: [
                        const SizedBox(height: 75),
                        PostWidget(
                          description: routeArgs.description,
                          postId: routeArgs.postId,
                          profileName: routeArgs.profileName,
                          dateNTime: routeArgs.dateNTime,
                          dpNetworkImageApiPath:
                              routeArgs.dpNetworkImageApiPath,
                          postNetworkImageUrl: routeArgs.postNetworkImageUrl,
                          username: routeArgs.username,
                          commentButtonVisibility: false,
                          isLiked: state.isLiked,
                          likeButtonOnTap: () {
                            BlocProvider.of<CommentsScreenBloc>(context)
                                .add(const CommentsScreenEvent.likePost());
                          },
                          shareButtonOnTap: () {
                            sharePostModalBottomSheet(
                              context: context,
                              getAllConversationsResponseList:
                                  state.getAllConversationsResponseList,
                              sentButtonOnTap: (friendIndex) {
                                BlocProvider.of<CommentsScreenBloc>(context)
                                    .add(CommentsScreenEvent.sharePostAsMessage(
                                        friendId: state
                                            .getAllConversationsResponseList?[
                                                friendIndex]
                                            .id,
                                        postId: postId));
                                Navigator.of(context).pop();
                              },
                              shareAsPostOnTap: () {
                                print('share as post clicked');
                                Navigator.of(context).pop();
                                sharePostDialog(
                                    context: context, postId: postId);
                              },
                            );
                          },
                          disablePostWidgetHeader:
                              routeArgs.disablePostWidgetHeader,
                          isDeleted: false,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 5, right: 5, top: 2, bottom: 10),
                          child: ListView.builder(
                            padding: const EdgeInsets.all(0),
                            itemCount: state.loadCommentsResponse?.length ?? 0,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemBuilder: (context, index) {
                              return Padding(
                                padding:
                                    const EdgeInsets.symmetric(vertical: 5),
                                child: vibeeListTile(
                                  height: 63,
                                  backgroundClr: backgroundScreenColor2,
                                  title:
                                      '${state.loadCommentsResponse?[index]?.userId?.firstName} ${state.loadCommentsResponse?[index]?.userId?.lastName}',
                                  borderRadius: 10,
                                  titleSize: 15,
                                  subtitle:
                                      '${state.loadCommentsResponse?[index]?.text}',
                                  // state.loadCommentsResponse
                                  //     ?.comments?[index].text,
                                  subtitleSize: 15,
                                  prefixWidget: vibeeDp(
                                    image:
//                                    NetworkImage(state.loadCommentsResponse[index].)
                                        AssetImage(CommonVariables.defaultDp),
                                    height: 30,
                                    width: 30,
                                  ),
                                  leftMArgin: 0,
                                  topMargin: 10,
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  child: Container(
                    color: backgroundScreenColor,
                    height: MediaQuery.of(context).size.height * 0.09,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        vibeeTextFormField(
                            hint: 'Add Comment',
                            textController: commentController,
                            width: MediaQuery.of(context).size.width * 0.75),
                        const SizedBox(width: 5),
                        ElevatedButton(
                          onPressed: () {
                            BlocProvider.of<CommentsScreenBloc>(context)
                                .add(CommentsScreenEvent.sentComment(
                                    postId: routeArgs.postId,
                                    //state.loadCommentsResponse!.id!,
                                    comment: commentController.text));
                            commentController.clear();
                          },
                          style: const ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(vibeePurple),
                              iconColor:
                                  MaterialStatePropertyAll(Colors.white)),
                          child: const Icon(Icons.send),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: double.infinity,
                  width: double.infinity,
                )
              ],
            ));
      },
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
                        child: BlocBuilder<CommentsScreenBloc,
                            CommentsScreenState>(
                          builder: (context, state) {
                            return TextField(
                              controller: descriptionController,
                              onTap: () {
                                BlocProvider.of<CommentsScreenBloc>(context)
                                    .add(const CommentsScreenEvent
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
                          BlocProvider.of<CommentsScreenBloc>(context).add(
                              CommentsScreenEvent.sharePost(
                                  postId: postId,
                                  description: descriptionController.text,
                                  privacy: privacy));

                          if (descriptionController.text.isNotEmpty) {
                            Navigator.pop(context);
                            print('poped');
                          }
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
            privacy = value ?? 'public';
          },
        ),
      ),
    );
  }
}
