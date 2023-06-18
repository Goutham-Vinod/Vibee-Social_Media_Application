import 'package:flutter/material.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/screens/chat_screen/chat_screen.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundScreenColor,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              children: [
                const SizedBox(width: 15),
                vibeeLogo(size: 30),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const SizedBox(width: 20),
                Row(
                  children: [
                    const SizedBox(width: 5),
                    vibeeText(
                      "Messages",
                      size: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ],
                )
              ],
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(
                              context, RouteGenerator.chatScreen);
                        },
                        child: vibeeListTile(
                          title: "Tina Joseph",
                          subtitle: "Tina Joseph Liked your post.",
                          icon: Icons.circle,
                          iconSize: 10,
                          iconColor: Colors.green,
                          prefixWidget: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: vibeeDp(
                              image: AssetImage(CommonVariables.testImagePath7),
                              height: 50,
                              width: 50,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
