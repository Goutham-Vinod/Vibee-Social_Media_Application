import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vibee/pages/create_group.dart';
import 'package:vibee/screens/chat_screen.dart';

import '../common_variables.dart';
import '../widgets/common_widgets.dart';

class MessagesPage extends StatelessWidget {
  const MessagesPage({super.key});

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
                Spacer(),
                IconButton(
                  onPressed: () {
                    navigatorPush(
                      context: context,
                      nextPage: CreateGroupPage(),
                    );
                  },
                  icon: Icon(
                    Icons.group_add,
                    color: Colors.white,
                    size: 30,
                  ),
                ),
                SizedBox(width: 20),
              ],
            ),
            SizedBox(height: 30),
            vibeeTextFormField(
              width: 330,
              hint: "Search",
              prefixIcon: Icon(
                Icons.search,
                color: Colors.white,
                size: 25,
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                SizedBox(width: 20),
                Row(
                  children: [
                    SizedBox(width: 15),
                    vibeeText("Messages"),
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
                          title: "Sophia Andrews",
                          subtitle: "sophia_123",
                          icon: Icons.circle,
                          iconSize: 10,
                          iconColor: Colors.green,
                          prefixWidget: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: vibeeDp(
                              image: AssetImage(
                                  "${CommonVariables.testImagePath5}"),
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
