import 'package:flutter/material.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

class SentMessageCard extends StatelessWidget {
  const SentMessageCard(
      {required this.message, required this.dateTime, super.key});
  final String message;
  final DateTime? dateTime;
  @override
  Widget build(BuildContext context) {
    String time = '${dateTime?.hour}:${dateTime?.minute}';
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25),
      child: Row(
        children: [
          const Spacer(),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                decoration: const BoxDecoration(
                  color: vibeePurple,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                      bottomRight: Radius.zero,
                      bottomLeft: Radius.circular(15)),
                ),
                width: message.length > 30 ? 200 : null,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    message,
                    textAlign: TextAlign.end,
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(height: 3),
              vibeeText(time, color: Colors.white38),
            ],
          ),
          const SizedBox(width: 15),
        ],
      ),
    );
  }
}
