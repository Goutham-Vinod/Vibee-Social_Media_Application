import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vibee/pages/create_group2.dart';
import '../common_variables.dart';
import '../widgets/common_widgets.dart';

class CreateGroupPage extends StatelessWidget {
  const CreateGroupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundScreenColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          navigatorPush(
            context: context,
            nextPage: CreateGroupPage2(),
          );
        },
        backgroundColor: vibeePurple,
        child: Icon(Icons.arrow_forward_rounded),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 40),
            Row(
              children: [
                SizedBox(width: 10),
                Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                vibeeText("Create a group",
                    size: 25, fontWeight: FontWeight.w600),
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
            SizedBox(height: 30),
            Row(
              children: [
                SizedBox(width: 35),
                vibeeText("Selected Participants")
              ],
            ),
            Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 100,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: vibeeListTile(
                      title: "Sophia Andrews",
                      subtitle: "sophia_123",
                      icon: Icons.person_add,
                      iconSize: 25,
                      prefixWidget: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: vibeeDp(
                          image:
                              AssetImage("${CommonVariables.testImagePath5}"),
                          height: 50,
                          width: 50,
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
