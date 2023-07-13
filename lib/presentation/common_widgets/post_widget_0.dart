import 'package:flutter/material.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/presentation/common_widgets/share_post_modal_bottom_sheet.dart';

import 'common_widgets.dart';

class PostWidget0 extends StatelessWidget {
  const PostWidget0({
    super.key,
    required this.postAssetImagePath,
    required this.dpAssetImagePath,
    required this.profileName,
    required this.dateNTime,
    this.isSavedPostPageWidget,
    this.isMyPost,
  });

  final String dateNTime;
  final String postAssetImagePath;
  final String dpAssetImagePath;
  final String profileName;
  final bool? isMyPost; // dafault false
  final bool? isSavedPostPageWidget; // default false

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            // bg container
            height: 500,
            width: double.infinity,
            color: backgroundScreenColor2,
          ),
          Positioned(
            // post
            top: 50,
            child: InkWell(
              onDoubleTap: () {
                print('post liked');
              },
              child: Container(
                  height: 400,
                  width: 395,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(postAssetImagePath),
                  ))),
            ),
          ),
          Positioned(
            // title
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
                      fit: BoxFit.cover,
                      image: AssetImage(dpAssetImagePath),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    vibeeText(profileName),
                    const SizedBox(height: 2),
                    Text(
                      dateNTime,
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
                            context, RouteGenerator.commentsScreen);
                      },
                      child: Image.asset("assets/icons/Chat_alt.png"),
                    ),
                    IconButton(
                      onPressed: () {
                     //   sharePostModalBottomSheet(context);
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
        ],
      ),
    );
  }
}
