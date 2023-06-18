import 'package:flutter/material.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

class CreateGroupScreen1 extends StatelessWidget {
  const CreateGroupScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundScreenColor,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushNamed(context,RouteGenerator.createGroupScreen2);
       
        },
        backgroundColor: vibeePurple,
        child: const Icon(Icons.arrow_forward_rounded),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 40),
            Row(
              children: [
                const SizedBox(width: 10),
                const Icon(
                  Icons.arrow_back,
                  size: 25,
                  color: Colors.white,
                ),
                const SizedBox(width: 10),
                vibeeText("Create a group",
                    size: 25, fontWeight: FontWeight.w600),
              ],
            ),
            const SizedBox(height: 30),
            vibeeTextFormField(
              width: 330,
              hint: "Search",
              prefixIcon: const Icon(
                Icons.search,
                color: Colors.white,
                size: 25,
              ),
            ),
            const SizedBox(height: 30),
            Row(
              children: [
                const SizedBox(width: 35),
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
                          image: AssetImage(CommonVariables.testImagePath5),
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
