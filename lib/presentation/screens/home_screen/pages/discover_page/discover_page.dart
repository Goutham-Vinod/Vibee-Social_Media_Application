import 'package:flutter/material.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

import '../../../../common_widgets/post_widget.dart';

class DiscoverPage extends StatelessWidget {
  const DiscoverPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: backgroundScreenColor,
        automaticallyImplyLeading: false,
        title: vibeeLogo(size: 30),
        actions: [
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.notifications_outlined)),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.verified_rounded)),
        ],
      ),
      backgroundColor: backgroundScreenColor,
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: PostWidget(
              postAssetImagePath: CommonVariables.testImagePath5,
              dpAssetImagePath: CommonVariables.testImagePath1,
              profileName: "DreamCatcher Studios",
              dateNTime: "28-05-2032 • Kerala",
            ),
          );
        },
      ),
    );
  }
}
