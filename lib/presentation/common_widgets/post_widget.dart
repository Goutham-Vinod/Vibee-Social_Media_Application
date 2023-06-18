import 'package:flutter/material.dart';

import 'common_widgets.dart';

class PostWidget extends StatelessWidget {
  const PostWidget({
    super.key,
    required this.postAssetImagePath,
    required this.dpAssetImagePath,
    required this.profileName,
    required this.dateNTime,
  });
  final String postAssetImagePath;
  final String dpAssetImagePath;
  final String profileName;
  final String dateNTime;
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
            child: Container(
                height: 400,
                width: 395,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(postAssetImagePath),
                ))),
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
          Positioned(
            //bookmark
            right: 10,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.bookmark_border_rounded,
                color: Colors.white,
              ),
            ),
          ), // bookmark
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
                    Image.asset("assets/icons/Chat_alt.png"),
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
        ],
      ),
    );
  }
}
