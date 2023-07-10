import 'package:flutter/material.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/core/config.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/core/routing/routing_arguments/comments__screen_arguments.dart';
import 'common_widgets.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
    this.postNetworkImageUrl,
    this.dpNetworkImageApiPath,
    this.dateNTime,
    this.place,
    required this.description,
    required this.profileName,
    required this.postId,
    this.isSavedPostPageWidget,
    this.isMyPost,
  });

  final bool? isMyPost; // dafault false
  final bool? isSavedPostPageWidget; // default false
  final String? postNetworkImageUrl;
  final String? dpNetworkImageApiPath;
  final DateTime? dateNTime;
  final String description;
  final String profileName;
  final String postId;
  final String? place;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            // bg container
            height: postNetworkImageUrl != null ? 550 : 150,
            width: double.infinity,
            color: backgroundScreenColor2,
          ),

          Positioned(
            // post
            top: 100,
            child: Visibility(
              visible: postNetworkImageUrl != null,
              child: Container(
                  height: 400,
                  width: 395,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: NetworkImage(postNetworkImageUrl ??
                              CommonVariables.defaultNetworkImageUrl)))),
            ),
          ),
          Positioned(
            // title row
            top: 2,
            left: 8,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  // dp
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: Colors.white, width: 1),
                    image: DecorationImage(
                        fit: BoxFit.cover, image: ProfilePicture()),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    vibeeText(profileName),
                    const SizedBox(height: 2),
                    Text(
                      place != null
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
          Positioned(
            right: 10,
            child: PopupMenuButton(
              color: const Color.fromARGB(255, 46, 46, 46),
              offset: const Offset(200, 10),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              itemBuilder: (itemBuildercontext) {
                List<PopupMenuEntry<Object?>> dropDownWidgets = [];
                if (isMyPost ?? false) {
                  dropDownWidgets.add(
                    PopupMenuItem(
                      value: "Edit",
                      child: vibeeText("Edit"),
                    ),
                  );
                  dropDownWidgets.add(PopupMenuItem(
                    value: "Delete",
                    child: vibeeText("Delete"),
                  ));
                } else {
                  dropDownWidgets.add(PopupMenuItem(
                    value: "Save",
                    child: vibeeText("Save"),
                  ));
                  dropDownWidgets.add(PopupMenuItem(
                    value: "Report",
                    child: vibeeText("Report"),
                  ));
                }
                return dropDownWidgets;
              },
              onSelected: (value) async {
                switch (value) {
                  case 'Report':
                    print('Report');
                    break;
                  default:
                }
              },
              child: Visibility(
                visible: isSavedPostPageWidget != null
                    ? !isSavedPostPageWidget!
                    : true,
                child: const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Icon(
                    Icons.more_vert,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          // options
          Positioned(
              // like, share, comment
              bottom: 0,
              child: SizedBox(
                width: 395,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.favorite_border_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                    InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, RouteGenerator.commentsScreen,
                              arguments: CommentsScreenArguments(
                                description: description,
                                profileName: profileName,
                                postId: postId,
                                dateNTime: dateNTime,
                                dpNetworkImageApiPath: dpNetworkImageApiPath,
                                postNetworkImageUrl: postNetworkImageUrl,
                              ));
                        },
                        child: Image.asset("assets/icons/Chat_alt.png")),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.send_rounded,
                        size: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              )), // like , share , comment
          Positioned(top: 68, left: 10, child: vibeeText(description)),
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
