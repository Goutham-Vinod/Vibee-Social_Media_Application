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

  TextEditingController commentController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as CommentsScreenArguments;

    BlocProvider.of<CommentsScreenBloc>(context).add(
        CommentsScreenEvent.initalizeCommentsScreen(postId: routeArgs.postId));
    log(routeArgs.postId);
    return Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: backgroundScreenColor,
        body: Stack(
          children: [
            SizedBox(
              height: 735,
              child: SingleChildScrollView(
                //   padding: const EdgeInsets.only(top: 75),
                child: BlocBuilder<CommentsScreenBloc, CommentsScreenState>(
                  builder: (context, state) {
                    return Column(
                      children: [
                        SizedBox(height: 75),
                        PostWidget(
                          description: routeArgs.description,
                          postId: routeArgs.postId,
                          profileName: routeArgs.profileName,
                          dateNTime: routeArgs.dateNTime,
                          dpNetworkImageApiPath:
                              routeArgs.dpNetworkImageApiPath,
                          postNetworkImageUrl: routeArgs.postNetworkImageUrl,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 5, right: 5, top: 2, bottom: 10),
                          child: ListView.builder(
                            padding: const EdgeInsets.all(0),
                            itemCount: state.loadCommentsResponse?.length,
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
                                      state.loadCommentsResponse?[index]?.text,
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
                    );
                  },
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
              top: 750,
              left: 12,
              child: BlocBuilder<CommentsScreenBloc, CommentsScreenState>(
                builder: (context, state) {
                  commentController.text = '';

                  return Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      vibeeTextFormField(
                        hint: 'Add Comment',
                        textController: commentController,
                      ),
                      const SizedBox(width: 5),
                      ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<CommentsScreenBloc>(context)
                              .add(CommentsScreenEvent.sentComment(
                                  postId: '',
                                  //state.loadCommentsResponse!.id!,
                                  comment: commentController.text));
                        },
                        style: const ButtonStyle(
                            backgroundColor:
                                MaterialStatePropertyAll(vibeePurple),
                            iconColor: MaterialStatePropertyAll(Colors.white)),
                        child: const Icon(Icons.send),
                      )
                    ],
                  );
                },
              ),
            ),
            const SizedBox(
              height: double.infinity,
              width: double.infinity,
            )
          ],
        ));
  }
}
