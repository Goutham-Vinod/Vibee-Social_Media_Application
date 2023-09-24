import 'package:flutter/material.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/core/routing/routing_arguments/comments__screen_arguments.dart';
import 'package:vibee/domain/models/get_details_of_single_post_response_model/get_details_of_single_post_response_model.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

class PostMessageWidget extends StatelessWidget {
  const PostMessageWidget({
    super.key,
    required this.postDetails,
    required this.isRecievedMessage,
    required this.dateTime,
  });
  final GetDetailsOfSinglePostResponseModel postDetails;
  final bool isRecievedMessage;
  final DateTime? dateTime;
  @override
  Widget build(BuildContext context) {
    bool? isLiked = postDetails.likes
        ?.contains(CommonVariables.currentUserDetailsResponse?.id);
    String time = '${dateTime?.hour}:${dateTime?.minute}';
    return Row(
      mainAxisAlignment: isRecievedMessage == true
          ? MainAxisAlignment.start
          : MainAxisAlignment.end,
      children: [
        postDetails.media != null
            ? Column(
                crossAxisAlignment: isRecievedMessage == true
                    ? CrossAxisAlignment.start
                    : CrossAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(
                          context, RouteGenerator.commentsScreen,
                          arguments: CommentsScreenArguments(
                              disablePostWidgetHeader: true,
                              description: postDetails.description!,
                              profileName: '',
                              postId: '',
                              username: '',
                              postNetworkImageUrl: postDetails.media,
                              isLiked: isLiked ?? false));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(top: 25, left: 25),
                      child: Container(
                        decoration: isRecievedMessage == true
                            ? const BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomRight: Radius.circular(10),
                                ))
                            : const BoxDecoration(
                                color: vibeePurple,
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(10),
                                  topRight: Radius.circular(10),
                                  bottomLeft: Radius.circular(10),
                                )),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 300,
                                width: 200,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: NetworkImage(
                                      postDetails.media!,
                                    ),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              (postDetails.description == null ||
                                      postDetails.description!.isEmpty)
                                  ? const SizedBox()
                                  : Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: vibeeText(
                                          postDetails.description ??
                                              'Shared post',
                                          color: isRecievedMessage == true
                                              ? Colors.black
                                              : Colors.white),
                                    ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      const SizedBox(width: 25),
                      vibeeText(time, color: Colors.white38),
                    ],
                  ),
                ],
              )
            : vibeeText('media not available'),
        const SizedBox(width: 15),
      ],
    );
  }
}
