import 'package:flutter/material.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/core/config.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/core/routing/routing_arguments/comments__screen_arguments.dart';
import 'package:vibee/core/routing/routing_arguments/profile_page_arguments.dart';
import 'common_widgets.dart';

class PostWidget extends StatelessWidget {
  const PostWidget(
      {super.key,
      this.postNetworkImageUrl,
      this.dpNetworkImageApiPath,
      this.dateNTime,
      this.place,
      required this.description,
      required this.profileName,
      required this.username,
      required this.postId,
      this.isSavedPostPageWidget,
      this.isMyPost,
      this.commentButtonVisibility,
      this.isLiked,
      this.likeButtonOnTap,
      this.shareButtonOnTap,
      this.createdByProfileName,
      this.createdByUserName,
      this.disablePostWidgetHeader,
      required this.isDeleted});

  final bool? isMyPost; // dafault false
  final bool? isSavedPostPageWidget; // default false
  final String? createdByProfileName; // use if it's a shared post
  final String? createdByUserName; // use if it's a shared post
  final String? postNetworkImageUrl;
  final String? dpNetworkImageApiPath;
  final DateTime? dateNTime;
  final String description;
  final String profileName;
  final String username;
  final String postId;
  final String? place;
  final bool? commentButtonVisibility;
  final bool? isLiked;
  final Function? likeButtonOnTap;
  final Function? shareButtonOnTap;
  final bool isDeleted;
  final bool? disablePostWidgetHeader;

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return isDeleted == true
        ? const SizedBox()
        : SizedBox(
            width: double.infinity,
            child: Stack(
              children: [
                Container(
                  // bg container
                  height: disablePostWidgetHeader == true
                      ? 500
                      : (postNetworkImageUrl != null ? 550 : 150),
                  width: double.infinity,
                  color: backgroundScreenColor2,
                ),

                Positioned(
                  // post
                  top: disablePostWidgetHeader == true ? 40 : 100,

                  child: Visibility(
                    visible: postNetworkImageUrl != null,
                    child: InkWell(
                      onDoubleTap: () {
                        if (likeButtonOnTap != null) {
                          likeButtonOnTap!();
                        }
                      },
                      child: Container(
                          height: 400,
                          width: width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image: NetworkImage(postNetworkImageUrl ??
                                      CommonVariables
                                          .defaultNetworkImageUrl)))),
                    ),
                  ),
                ),
                disablePostWidgetHeader == true
                    ? const SizedBox()
                    : Positioned(
                        // title row
                        top: 10,
                        left: 8,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            InkWell(
                              onTap: () => Navigator.pushNamed(
                                  context, RouteGenerator.profilePage,
                                  arguments: ProfilePageArguments(
                                      username: username,
                                      isCurrentUserProfile: false)),
                              child: Container(
                                // dp
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  border:
                                      Border.all(color: Colors.white, width: 1),
                                  image: DecorationImage(
                                      fit: BoxFit.cover,
                                      image: ProfilePicture()),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                (createdByProfileName != null &&
                                        createdByUserName != null)
                                    ? Row(
                                        children: [
                                          InkWell(
                                              onTap: () => Navigator.pushNamed(
                                                  context,
                                                  RouteGenerator.profilePage,
                                                  arguments:
                                                      ProfilePageArguments(
                                                          username: username,
                                                          isCurrentUserProfile:
                                                              false)),
                                              child:
                                                  vibeeText("$profileName ")),
                                          vibeeText("shared "),
                                          InkWell(
                                              onTap: () => Navigator.pushNamed(
                                                  context,
                                                  RouteGenerator.profilePage,
                                                  arguments: ProfilePageArguments(
                                                      username:
                                                          createdByUserName,
                                                      isCurrentUserProfile:
                                                          false)),
                                              child: vibeeText(
                                                  "$createdByProfileName's post")),
                                        ],
                                      )
                                    : InkWell(
                                        onTap: () => Navigator.pushNamed(
                                            context, RouteGenerator.profilePage,
                                            arguments: ProfilePageArguments(
                                                username: username,
                                                isCurrentUserProfile: false)),
                                        child: vibeeText("$profileName ")),
                                const SizedBox(height: 2),
                                Text(
                                  (place != null &&
                                          place?.isEmpty != true &&
                                          place != '' &&
                                          place != ' ')
                                      ? '${dateNTime?.day.toString().padLeft(2, '0') ?? ''}/${dateNTime?.month.toString().padLeft(2, '0') ?? ''}/${dateNTime?.year.toString() ?? ''} • ${place ?? ''}'
                                      : '${dateNTime?.day.toString().padLeft(2, '0') ?? ''}/${dateNTime?.month.toString().padLeft(2, '0') ?? ''}/${dateNTime?.year.toString() ?? ''}',
                                  style: const TextStyle(
                                    color: Colors.white30,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                Visibility(
                  visible: isSavedPostPageWidget ?? false,
                  child: Positioned(
                    //bookmark
                    right: 10,
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.bookmark_border_rounded,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ), // bookmark
                // options
                const SizedBox(),
                // disablePostWidgetHeader == true
                //     ? SizedBox()
                //     : Positioned(
                //         right: 10,
                //         child: PopupMenuButton(
                //           color: const Color.fromARGB(255, 46, 46, 46),
                //           offset: const Offset(200, 10),
                //           shape: RoundedRectangleBorder(
                //               borderRadius: BorderRadius.circular(10)),
                //           itemBuilder: (itemBuildercontext) {
                //             List<PopupMenuEntry<Object?>> dropDownWidgets = [];
                //             if (isMyPost ?? false) {
                //               dropDownWidgets.add(
                //                 PopupMenuItem(
                //                   value: "Edit",
                //                   child: vibeeText("Edit"),
                //                 ),
                //               );
                //               dropDownWidgets.add(PopupMenuItem(
                //                 value: "Delete",
                //                 child: vibeeText("Delete"),
                //               ));
                //             } else {
                //               dropDownWidgets.add(PopupMenuItem(
                //                 value: "Save",
                //                 child: vibeeText("Save"),
                //               ));
                //               dropDownWidgets.add(PopupMenuItem(
                //                 value: "Report",
                //                 child: vibeeText("Report"),
                //               ));
                //             }
                //             return dropDownWidgets;
                //           },
                //           onSelected: (value) async {
                //             switch (value) {
                //               case 'Report':
                //                 print('Report');
                //                 break;
                //               default:
                //             }
                //           },
                //           child: Visibility(
                //             visible: isSavedPostPageWidget != null
                //                 ? !isSavedPostPageWidget!
                //                 : true,
                //             child: const Padding(
                //               padding: EdgeInsets.symmetric(vertical: 10),
                //               child: Icon(
                //                 Icons.more_vert,
                //                 color: Colors.white,
                //               ),
                //             ),
                //           ),
                //         ),
                //       ),
                // options
                Positioned(
                    // like, share, comment
                    bottom: disablePostWidgetHeader == true ? 8 : 0,
                    child: SizedBox(
                      width: width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                            onPressed: () {
                              // like
                              if (likeButtonOnTap != null) {
                                likeButtonOnTap!();
                              }
                            },
                            icon: isLiked == true
                                ? const Icon(
                                    Icons.favorite,
                                    size: 30,
                                    color: Colors.red,
                                  )
                                : const Icon(
                                    Icons.favorite_border_rounded,
                                    size: 30,
                                    color: Colors.white,
                                  ),
                          ),
                          Visibility(
                            visible: commentButtonVisibility ?? true,
                            child: InkWell(
                                onTap: () {
                                  // comment
                                  print('post Id $postId');
                                  Navigator.pushNamed(
                                      context, RouteGenerator.commentsScreen,
                                      arguments: CommentsScreenArguments(
                                          description: description,
                                          profileName: profileName,
                                          postId: postId,
                                          dateNTime: dateNTime,
                                          dpNetworkImageApiPath:
                                              dpNetworkImageApiPath,
                                          postNetworkImageUrl:
                                              postNetworkImageUrl,
                                          username: username,
                                          isLiked: isLiked ?? false));
                                },
                                child:
                                    Image.asset("assets/icons/Chat_alt.png")),
                          ),
                          IconButton(
                            onPressed: () {
                              // share
                              if (shareButtonOnTap != null) {
                                shareButtonOnTap!();
                              }
                            },
                            icon: const Icon(
                              Icons.send_rounded,
                              size: 30,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    )), // like , share , comment
                Positioned(
                    top: disablePostWidgetHeader == true ? 10 : 68,
                    left: 10,
                    child: vibeeText(description)),
              ],
            ),
          );
  }

  ImageProvider ProfilePicture() {
    if (dpNetworkImageApiPath != null) {
      return NetworkImage(
          Config.getPictureUrl(picturePath: dpNetworkImageApiPath!));
    } else {
      return AssetImage(CommonVariables.defaultDp);
    }
  }
}
