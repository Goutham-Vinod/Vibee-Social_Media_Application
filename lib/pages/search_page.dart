import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../common_variables.dart';
import '../widgets/common_widgets.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
            SizedBox(height: 10),
            Row(
              children: [
                SizedBox(width: 20),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      checkColor: Colors.black,
                      fillColor: MaterialStatePropertyAll(
                          Color.fromARGB(255, 255, 255, 255)),
                      onChanged: (value) {},
                    ),
                    vibeeText("Include only friends of friends"),
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
                        onTap: () {},
                        child: vibeeListTile(
                          title: "Tina Joseph",
                          subtitle: "tina_244",
                          icon: Icons.person_add,
                          prefixWidget: vibeeDp(
                            image:
                                AssetImage("${CommonVariables.testImagePath7}"),
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
