import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vibee/widgets/common_widgets.dart';

class RecieveMessageCard extends StatelessWidget {
  RecieveMessageCard({required this.message, super.key});
  final String message;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, left: 25),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.zero,
                      topRight: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                      bottomLeft: Radius.circular(15)),
                ),
                width: 200,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('$message'),
                ),
              ),
              SizedBox(height: 3),
              Row(
                children: [
                  vibeeText("29 May 2023 • 10:30am", color: Colors.white38),
                  SizedBox(width: 10),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
