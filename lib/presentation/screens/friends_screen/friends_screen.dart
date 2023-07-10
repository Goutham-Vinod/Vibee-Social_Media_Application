import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/profile_page/profile_page_bloc.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/common_widgets/post_widget_0.dart';

class FriendsScreen extends StatelessWidget {
  FriendsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundScreenColor,
      appBar: AppBar(
        title: Text('Friends'),
        backgroundColor: backgroundScreenColor,
      ),
      body: ListView.builder(
        itemCount: 5,
        // shrinkWrap: true,
        // physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return vibeeListTile(
              title: 'Friends name $index',
              prefixWidget:
                  vibeeDp(image: AssetImage(CommonVariables.defaultDp)),
              suffixWidget: ElevatedButton(
                  onPressed: () {
                    print('unfriend $index');
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStatePropertyAll(Colors.transparent),
                      side: MaterialStatePropertyAll(
                          BorderSide(color: Colors.red))),
                  child: vibeeText('UNFRIEND', color: Colors.red)));
        },
      ),
    );
  }
}
