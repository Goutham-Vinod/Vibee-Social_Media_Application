import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:vibee/models/get_current_user_details_response_model.dart';

import '../widgets/common_widgets.dart';
import 'home_screen.dart';

class EditProfileScreen extends StatefulWidget {
  EditProfileScreen({required this.currentUserDetails, super.key});

  GetCurrentUserDetailsResponseModel currentUserDetails;

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  TextEditingController firstNameController = TextEditingController();
  String firstNameWarningText = '';
  TextEditingController lastNameController = TextEditingController();
  String lastNameWarningText = '';
  TextEditingController usernameController = TextEditingController();
  String usernameWarningText = '';
  TextEditingController dateOfBirthController = TextEditingController();
  String dateOfBirthWarningText = '';
  TextEditingController phoneNumberController = TextEditingController();
  String phoneNumberWarningText = '';
  TextEditingController emailController = TextEditingController();
  String emailWarningText = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: backgroundScreenColor,
        body: SafeArea(
          child: SingleChildScrollView(
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
                    SizedBox(height: 50, width: double.infinity),
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
                    SizedBox(height: 20, width: double.infinity),
                    vibeeTextFormField(
                      hint: "First Name",
                      textController: firstNameController,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 60),
                        vibeeText(firstNameWarningText, color: Colors.red),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 10),
                    vibeeTextFormField(
                      hint: "Last Name",
                      textController: lastNameController,
                    ),
                    Row(
                      children: [
                        SizedBox(width: 60),
                        vibeeText(lastNameWarningText, color: Colors.red),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 10),
                    vibeeTextFormField(
                        hint: "Username", textController: usernameController),
                    Row(
                      children: [
                        SizedBox(width: 60),
                        vibeeText(usernameWarningText, color: Colors.red),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 10),
                    vibeeTextFormField(
                        textController: dateOfBirthController,
                        hint: "Date of Birth",
                        suffixIcon: Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.white,
                        )),
                    Row(
                      children: [
                        SizedBox(width: 60),
                        vibeeText(dateOfBirthWarningText, color: Colors.red),
                        Spacer(),
                      ],
                    ),
                    SizedBox(height: 10),
                    SizedBox(height: 10),
                    vibeeButton(
                        content: "Continue",
                        onPressed: () {
                          navigatorPush(
                              context: context, nextPage: HomeScreen());
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
            ),
          ),
        ),
      ),
    );
  }

  bool validateVibeeFormField() {
    bool isValidationComplete = true;

    if (firstNameController.text.length < 2) {
      // Our app support only indian phone numbers
      setState(() {
        firstNameWarningText = "First name should not be too short";
      });
      isValidationComplete = false;
    }
    if (firstNameController.text.isEmpty) {
      // Our app support only indian phone numbers
      setState(() {
        firstNameWarningText = "Please enter your first name";
      });
      isValidationComplete = false;
    }

    if (lastNameController.text.isEmpty) {
      // Our app support only indian phone numbers
      setState(() {
        lastNameWarningText = "Please enter a last name";
      });
      isValidationComplete = false;
    }

    if (usernameController.text.isEmpty) {
      setState(() {
        usernameWarningText = "Please enter a username.";
      });
      isValidationComplete = false;
    }

    if (dateOfBirthController.text.isEmpty) {
      setState(() {
        dateOfBirthWarningText = "Please enter your date of birth";
      });
      // dob is not mandatory
    }

    return isValidationComplete;
  }
}
