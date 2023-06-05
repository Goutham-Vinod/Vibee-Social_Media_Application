import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vibee/screens/chat_screen.dart';

import '../common_variables.dart';
import '../widgets/common_widgets.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundScreenColor,
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              children: [
                SizedBox(width: 15),
                vibeeLogo(size: 30),
              ],
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Row(
                  children: [
                    SizedBox(width: 5),
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
                          navigatorPush(
                            context: context,
                            nextPage: ChatScreen(),
                          );
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
                              image: AssetImage(
                                  "${CommonVariables.testImagePath7}"),
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
