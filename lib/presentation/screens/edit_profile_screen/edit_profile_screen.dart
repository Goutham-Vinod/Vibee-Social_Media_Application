import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/edit_profile_screen/edit_profile_screen_bloc.dart';
import 'package:vibee/core/routing/routing.dart';
import 'package:vibee/domain/models/get_current_user_details_response_model/get_current_user_details_response_model.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/screens/edit_profile_screen/date_picker.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({super.key});

  late final GetCurrentUserDetailsResponseModel currentUserDetails;
  // write function to get current user details when frame loaded

  @override
  Widget build(BuildContext context) {
    BlocProvider.of<EditProfileScreenBloc>(context)
        .add(const EditProfileScreenEvent.initializeScreen());
    return BlocConsumer<EditProfileScreenBloc, EditProfileScreenState>(
      listener: (context, state) {
        if (state.isProfileUpdated) {
          showSnackBar(
              context: context,
              message: 'Saved',
              backgroundColor: Colors.green,
              height: 35,
              width: 100);
          Navigator.pop(context);
        }

        if (state.errorMessage != null) {
          showSnackBar(
            context: context,
            message: 'error message',
            backgroundColor: Colors.red,
            height: 35,
            width: 100,
          );
        }
      },
      builder: (context, state) {
        TextEditingController firstNameController =
            TextEditingController(text: state.firstName);
        TextEditingController lastNameController =
            TextEditingController(text: state.lastName);
        TextEditingController usernameController =
            TextEditingController(text: state.username);
        TextEditingController dobController = TextEditingController(
            text: '${state.dob.day}/${state.dob.month}/${state.dob.year}');
        TextEditingController emailController =
            TextEditingController(text: state.email);
        TextEditingController locationController =
            TextEditingController(text: state.location);
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
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.only(left: 15),
                      child: vibeeLogo(size: 30),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 50, width: double.infinity),
                        vibeeText('First name', width: 280),
                        vibeeTextFormField(
                          hint: "First Name",
                          textController: firstNameController,
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 60),
                            vibeeText(state.firstNameWarningText,
                                color: Colors.red),
                            const Spacer(),
                          ],
                        ),
                        const SizedBox(height: 5),
                        vibeeText('Last name', width: 280),
                        vibeeTextFormField(
                          hint: "Last Name",
                          textController: lastNameController,
                        ),
                        Row(
                          children: [
                            const SizedBox(width: 60),
                            vibeeText(state.lastNameWarningText,
                                color: Colors.red),
                            const Spacer(),
                          ],
                        ),
                        const SizedBox(height: 5),
                        vibeeText('Username', width: 280),
                        vibeeTextFormField(
                            hint: "Username",
                            textController: usernameController),
                        Row(
                          children: [
                            const SizedBox(width: 60),
                            vibeeText(state.usernameWarningText,
                                color: Colors.red),
                            const Spacer(),
                          ],
                        ),
                        const SizedBox(height: 5),
                        vibeeText('Date of Birth', width: 280),
                        vibeeTextFormField(
                            textController: dobController,
                            hint: "Date of Birth",
                            suffixIcon: const Icon(
                              Icons.calendar_month_outlined,
                              color: Colors.white,
                            ),
                            onTap: () {
                              EditProfileScreenWidgets.showDatePickerDialog(
                                  context);
                            }),
                        const SizedBox(
                          height: 20,
                        ),
                        vibeeText('Location', width: 280),
                        vibeeTextFormField(
                            textController: locationController,
                            hint: "Location",
                            suffixIcon: const Icon(
                              Icons.location_on_outlined,
                              color: Colors.white,
                            )),
                        Row(
                          children: [
                            const SizedBox(width: 60),
                            vibeeText(state.locationWarningText,
                                color: Colors.red),
                            const Spacer(),
                          ],
                        ),
                        const SizedBox(height: 5),
                        vibeeText('Email', width: 280),
                        vibeeTextFormField(
                            textController: emailController,
                            hint: "Email",
                            suffixIcon: const Icon(
                              Icons.mail_outline_rounded,
                              color: Colors.white,
                            )),
                        const SizedBox(height: 20),
                        vibeeButton(
                            content: "Save",
                            onPressed: () {
                              BlocProvider.of<EditProfileScreenBloc>(context)
                                  .add(EditProfileScreenEvent.updateProfile(
                                firstName: firstNameController.text,
                                lastName: lastNameController.text,
                                username: usernameController.text,
                                dob: EditProfileScreenWidgets.selectedDob ??
                                    state.dob,
                                location: locationController.text,
                                email: emailController.text,
                              ));
                            },
                            height: 35,
                            width: 300),
                        const SizedBox(height: 15),
                        vibeeOutlineButton(
                            message: 'Cancel',
                            height: 35,
                            width: 300,
                            borderRadius: 10,
                            onPressed: () {
                              Navigator.of(context).pop();
                            }),
                        // TextButton(
                        //     onPressed: () {
                        //       Navigator.pushNamed(
                        //           context, RouteGenerator.emailInputScreen);
                        //     },
                        //     child: const Text(
                        //       "Change Password",
                        //       style: TextStyle(color: vibeePurple),
                        //     )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
