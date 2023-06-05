import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vibee/common_variables.dart';
import 'package:vibee/widgets/common_widgets.dart';

import '../widgets/recieve_message_card.dart';
import '../widgets/sent_message_card.dart';

class ChatScreen extends StatefulWidget {
  ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  TextEditingController msgController = TextEditingController();
  @override
  void initState() {
    super.initState();
  }

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
                image: AssetImage("${CommonVariables.testImagePath5}"),
                height: 40,
                width: 40,
              ),
              SizedBox(width: 10),
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
              icon: Icon(Icons.phone_outlined),
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
                    return RecieveMessageCard(message: "Hai");
                  } else {
                    return SentMessageCard(message: "Hello");
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
                        decoration: InputDecoration(border: InputBorder.none),
                        cursorHeight: 30,
                        cursorColor: vibeePurple,
                      ),
                    ),
                    IconButton(
                        onPressed: () {
                          print("Message sent");
                        },
                        icon: Icon(
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
