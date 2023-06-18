import 'package:flutter/material.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/domain/models/get_current_user_details_response_model.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/screens/home_screen/home_screen.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});

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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: vibeeLogo(size: 30),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 50, width: double.infinity),
                    GestureDetector(
                      onTap: () {},
                      child: SizedBox(
                          height: 150,
                          child: Stack(
                            children: [
                              Image.asset("assets/images/default_dp.png"),
                              const Positioned(
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
                    const SizedBox(height: 20, width: double.infinity),
                    vibeeTextFormField(
                      hint: "First Name",
                      textController: firstNameController,
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 60),
                        vibeeText(firstNameWarningText, color: Colors.red),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(height: 10),
                    vibeeTextFormField(
                      hint: "Last Name",
                      textController: lastNameController,
                    ),
                    Row(
                      children: [
                        const SizedBox(width: 60),
                        vibeeText(lastNameWarningText, color: Colors.red),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(height: 10),
                    vibeeTextFormField(
                        hint: "Username", textController: usernameController),
                    Row(
                      children: [
                        const SizedBox(width: 60),
                        vibeeText(usernameWarningText, color: Colors.red),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(height: 10),
                    vibeeTextFormField(
                        textController: dateOfBirthController,
                        hint: "Date of Birth",
                        suffixIcon: const Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.white,
                        )),
                    Row(
                      children: [
                        const SizedBox(width: 60),
                        vibeeText(dateOfBirthWarningText, color: Colors.red),
                        const Spacer(),
                      ],
                    ),
                    const SizedBox(height: 10),
                    const SizedBox(height: 10),
                    vibeeButton(
                        content: "Continue",
                        onPressed: () {
                          Navigator.pushNamed(context, RouteGenerator.home);
                        },
                        height: 35,
                        width: 300),
                    TextButton(
                        onPressed: () {},
                        child: const Text(
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
}
