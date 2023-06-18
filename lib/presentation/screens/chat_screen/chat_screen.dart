import 'package:flutter/material.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/common_widgets/recieve_message_card.dart';
import 'package:vibee/presentation/common_widgets/sent_message_card.dart';

class ChatScreen extends StatelessWidget {
  ChatScreen({super.key});

  final TextEditingController msgController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundScreenColor,
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: backgroundScreenColor,
          title: Row(
            children: [
              vibeeDp(
                image: AssetImage(CommonVariables.testImagePath5),
                height: 40,
                width: 40,
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  vibeeText("Tina Joseph", size: 20),
                  vibeeText("Online", size: 15),
                ],
              ),
            ],
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.phone_outlined),
            ),
            IconButton(
              onPressed: () {},
              icon: Image.asset("assets/icons/Video Icon.png"),
            ),
          ],
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 2,
                itemBuilder: (context, index) {
                  if (index % 2 == 0) {
                    return const RecieveMessageCard(message: "Hai");
                  } else {
                    return const SentMessageCard(message: "Hello");
                  }
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.08),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                height: 55,
                width: MediaQuery.of(context).size.width * 0.9,
                child: SizedBox(
                    child: Row(
                  children: [
                    SizedBox(width: MediaQuery.of(context).size.width * 0.02),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.68,
                      child: TextField(
                        controller: msgController,
                        decoration:
                            const InputDecoration(border: InputBorder.none),
                        cursorHeight: 30,
                        cursorColor: vibeePurple,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          print("Message sent");
                        },
                        icon: const Icon(
                          Icons.send,
                          color: vibeePurple,
                        ))
                  ],
                )),
              ),
            ),
          ],
        ));
  }
}
