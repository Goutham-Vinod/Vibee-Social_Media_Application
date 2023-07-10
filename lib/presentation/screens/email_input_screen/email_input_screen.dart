import 'package:flutter/material.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/domain/models/get_current_user_details_response_model/get_current_user_details_response_model.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

class EmailInputScreen extends StatelessWidget {
  EmailInputScreen({super.key});

  late final GetCurrentUserDetailsResponseModel currentUserDetails;
  // write function to get current user details when frame loaded

  final TextEditingController firstNameController = TextEditingController();
  final String firstNameWarningText = '';
  final TextEditingController lastNameController = TextEditingController();
  final String lastNameWarningText = '';
  final TextEditingController usernameController = TextEditingController();
  final String usernameWarningText = '';
  final TextEditingController dateOfBirthController = TextEditingController();
  final String dateOfBirthWarningText = '';
  final TextEditingController phoneNumberController = TextEditingController();
  final String phoneNumberWarningText = '';
  final TextEditingController emailController = TextEditingController();
  final String emailWarningText = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        // resizeToAvoidBottomInset: false,
        backgroundColor: backgroundScreenColor,
        body: SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 25),
                  child: vibeeLogo(size: 30),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: SizedBox(
                    width: 250,
                    child: vibeeText("Enter Your Email",
                        size: 35, fontWeight: FontWeight.w800),
                  ),
                ),
                SizedBox(height: 50),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      vibeeTextFormField(
                          textController: dateOfBirthController,
                          hint: "Email",
                          suffixIcon: const Icon(
                            Icons.mail_outline_rounded,
                            color: Colors.white,
                          )),
                      const SizedBox(height: 25),
                      vibeeButton(
                          content: "Save",
                          onPressed: () {
                            Navigator.pushNamed(
                                context, RouteGenerator.verifyEmailScreen,
                                arguments: '647ef3afd07393ab84c52c8b');
                            // dummy user Id - user Id is recieved from email verify response
                          },
                          height: 35,
                          width: 300),
                    ],
                  ),
                )
              ]),
        ),
      ),
    );
  }
}
