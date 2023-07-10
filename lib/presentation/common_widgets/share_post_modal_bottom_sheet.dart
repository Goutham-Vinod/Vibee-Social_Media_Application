import 'package:flutter/material.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

sharePostModalBottomSheet(context) {
  showModalBottomSheet<void>(
    context: context,
    isScrollControlled: true,
    isDismissible: true,
    backgroundColor: backgroundScreenColor2,
    builder: (BuildContext context) {
      return SizedBox(
        height: 300,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: double.maxFinite,
                  child: ElevatedButton(
                      onPressed: () {},
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.transparent),
                          side: MaterialStatePropertyAll(
                              BorderSide(color: Colors.white)),
                          iconColor: MaterialStatePropertyAll(Colors.white)),
                      child: vibeeText('Share as post',
                          color: Colors.white, size: 20)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    vibeeText('Sent as message', color: Colors.white, size: 18),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return vibeeListTile(
                      title: 'Friend $index',
                      titleSize: 15,
                      prefixWidget: vibeeDp(
                          height: 50,
                          width: 50,
                          image: AssetImage(CommonVariables.defaultDp)),
                      suffixWidget: vibeeOutlineButton(
                          message: 'Sent',
                          onPressed: () {
                            print('sent to $index');
                          }),
                    );
                  },
                ),
              )
            ],
          ),
        ),
      );
    },
  );
}
