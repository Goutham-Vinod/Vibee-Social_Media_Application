// import 'dart:io';

// import 'package:chewie/chewie.dart';
// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class VideoPlayerWidget extends StatefulWidget {
//   const VideoPlayerWidget({
//     super.key,
//     this.url,
//     this.assetpath,
//     this.file,
//   });
//   final String? url;
//   final String? assetpath;
//   final File? file;

//   @override
//   State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
// }

// class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
//   late final videoPlayerController;

//   late ChewieController chewieController;
//   @override
//   void initState() async {
//     if (widget.url != null) {
//       videoPlayerController =
//           VideoPlayerController.networkUrl(Uri.parse(widget.url!));
//     } else if (widget.assetpath != null) {
//       videoPlayerController = VideoPlayerController.asset(widget.assetpath!);
//     } else if (widget.file != null) {
//       videoPlayerController = VideoPlayerController.file(widget.file!);
//     } else {
//       print('Provide url or assetPath or file');
//     }

//     await videoPlayerController.initialize();
//     chewieController = ChewieController(
//       videoPlayerController: videoPlayerController,
//       autoPlay: true,
//       looping: true,
//     );
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Chewie(controller: chewieController);
//   }

//   @override
//   void dispose() {
//     videoPlayerController.dispose();
//     chewieController.dispose();
//     super.dispose();
//   }
// }
