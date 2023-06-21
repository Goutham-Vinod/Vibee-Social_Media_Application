import 'package:flutter/material.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

class SentMessageCard extends StatelessWidget {
  const SentMessageCard({required this.message, super.key});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25),
      child: Row(
        children: [
          const Spacer(),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                width: 200,
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
              Row(
                children: [
                  const SizedBox(width: 10),
                  vibeeText("29 May 2023 • 10:31am", color: Colors.white38),
                ],
              ),
            ],
          ),
          const SizedBox(width: 20),
        ],
      ),
    );
  }
}