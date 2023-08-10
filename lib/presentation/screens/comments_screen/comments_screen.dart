import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/comments_screen/comments_screen_bloc.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/core/routing/routing_arguments/comments__screen_arguments.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/common_widgets/post_widget.dart';

class CommentsScreen extends StatelessWidget {
  CommentsScreen({super.key});

  final TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as CommentsScreenArguments;

    BlocProvider.of<CommentsScreenBloc>(context).add(
        CommentsScreenEvent.initalizeCommentsScreen(
            postId: routeArgs.postId, isLiked: routeArgs.isLiked));

    return BlocBuilder<CommentsScreenBloc, CommentsScreenState>(
      builder: (context, state) {
        return Scaffold(
            resizeToAvoidBottomInset: false,
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

                                  titleSize: 15,
                                  subtitle:
                                      '${state.loadCommentsResponse?[index]?.text}',
                                  // state.loadCommentsResponse
                                  //     ?.comments?[index].text,
                                  subtitleSize: 15,
                                  prefixWidget: vibeeDp(
                                    image:
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
                Container(
                  width: double.infinity,
                  height: 80,
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                        Colors.black,
                        Colors.transparent,
                      ])),
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
                  top: MediaQuery.of(context).size.height * 0.92,
                  left: 12,
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
                            iconColor: MaterialStatePropertyAll(Colors.white)),
                        child: const Icon(Icons.send),
                      )
                    ],
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
}
