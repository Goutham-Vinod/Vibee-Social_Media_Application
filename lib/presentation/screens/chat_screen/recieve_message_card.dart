import 'package:flutter/material.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

class RecieveMessageCard extends StatelessWidget {
  const RecieveMessageCard({
    required this.message,
    super.key,
    required this.isGroupChat,
    this.senderName,
    required this.dateTime,
  });
  final String message;
  final bool isGroupChat;
  final String? senderName;
  final DateTime? dateTime;
  @override
  Widget build(BuildContext context) {
    String time = '${dateTime?.hour}:${dateTime?.minute}';
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25),
      child: Column(
        children: [
          Row(
            children: [
              const SizedBox(width: 52),
              Visibility(
                  visible: isGroupChat,
                  child: vibeeText(senderName ?? 'Sender name')),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Visibility(
                visible: isGroupChat,
                child: vibeeDp(
                  image: AssetImage(CommonVariables.defaultDp),
                  height: 42,
                  width: 42,
                ),
              ),
              Visibility(
                  visible: isGroupChat, child: const SizedBox(width: 10)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.zero,
                          topRight: Radius.circular(15),
                          bottomRight: Radius.circular(15),
                          bottomLeft: Radius.circular(15)),
                    ),
                    width: message.length > 20 ? 200 : null,
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text(message),
                    ),
                  ),
                  const SizedBox(height: 3),
                  vibeeText(time, color: Colors.white38),
                  const SizedBox(width: 10),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
