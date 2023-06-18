import 'package:flutter/material.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

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
            const SizedBox(height: 10),
            Row(
              children: [
                const SizedBox(width: 20),
                Row(
                  children: [
                    Checkbox(
                      value: true,
                      checkColor: Colors.black,
                      fillColor: const MaterialStatePropertyAll(
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
                            image: AssetImage(CommonVariables.testImagePath7),
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
