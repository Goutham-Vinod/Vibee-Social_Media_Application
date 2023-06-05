import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../widgets/common_widgets.dart';
import 'home_screen.dart';

class ProfileDetailsScreen extends StatelessWidget {
  const ProfileDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: backgroundScreenColor,
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 40),
          Padding(
            padding: const EdgeInsets.only(left: 15),
            child: vibeeLogo(size: 30),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 80, width: double.infinity),
              GestureDetector(
                onTap: () {
                  print("hai");
                },
                child: SizedBox(
                    height: 150,
                    child: Stack(
                      children: [
                        Image.asset("assets/images/default_dp.png"),
                        Positioned(
                          bottom: 0,
                          right: 10,
                          child: Icon(
                            Icons.camera_alt,
                            color: Colors.white,
                            size: 35,
                          ),
                        ),
                      ],
                    )),
              ),
              SizedBox(height: 40, width: double.infinity),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  vibeeTextFormField(hint: "First Name", width: 145),
                  SizedBox(width: 10),
                  vibeeTextFormField(hint: "Last Name", width: 145),
                ],
              ),
              SizedBox(height: 10),
              vibeeTextFormField(hint: "Username"),
              SizedBox(height: 10),
              vibeeTextFormField(
                  hint: "Date of Birth",
                  suffixIcon: Icon(
                    Icons.calendar_month_outlined,
                    color: Colors.white,
                  )),
              SizedBox(height: 10),
              vibeeTextFormField(
                  hint: "Phone",
                  suffixIcon: Icon(
                    Icons.phone,
                    color: Colors.white,
                  )),
              SizedBox(height: 10),
              vibeeTextFormField(hint: "Email"),
              SizedBox(height: 50),
              vibeeButton(
                  content: "Continue",
                  onPressed: () {
                    navigatorPush(context: context, nextPage: HomeScreen());
                  },
                  height: 35,
                  width: 300),
              TextButton(
                  onPressed: () {},
                  child: Text(
                    "Change Password",
                    style: TextStyle(color: vibeePurple),
                  ))
            ],
          ),
        ],
      )),
    );
  }
}
