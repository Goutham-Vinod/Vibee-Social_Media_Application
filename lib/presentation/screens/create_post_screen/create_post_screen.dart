import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vibee/application/blocs/create_post_screen/create_post_screen_bloc.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';
import 'package:vibee/presentation/common_widgets/video_player.dart';

class CreatePostScreen extends StatelessWidget {
  CreatePostScreen({super.key});

  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  String? privacy;

  @override
  Widget build(BuildContext context) {
    return BlocListener<CreatePostScreenBloc, CreatePostScreenState>(
      listener: (context, state) {
        if (state.errorMessage != null) {
          showSnackBar(context: context, message: state.errorMessage);
        }
        if (state.isUploadPostSuccess) {
          Navigator.of(context).pop();
        }
      },
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: backgroundScreenColor,
          body: SafeArea(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.only(left: 25, top: 25),
                  //   child: vibeeLogo(size: 30),
                  // ),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.all(30.0),
                    child: SizedBox(
                      width: 250,
                      child: vibeeText("Create Post",
                          size: 30, fontWeight: FontWeight.w800),
                    ),
                  ),
                  SizedBox(height: 25),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        vibeeTextFormField(
                          textController: descriptionController,
                          hint: "Add a description",
                        ),
                        const SizedBox(height: 13),
                        SizedBox(
                          width: 300,
                          child: DropdownButtonFormField(
                            dropdownColor: backgroundScreenColor2,
                            decoration: InputDecoration(
                              hintText: 'Privacy',
                              hintStyle: const TextStyle(color: Colors.white),
                              // prefixIcon: prefixIcon,
                              // suffixIcon: suffixIcon,

                              contentPadding: const EdgeInsets.symmetric(
                                  vertical: 8, horizontal: 20),
                              border: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(10)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.transparent),
                                  borderRadius: BorderRadius.circular(10)),
                              filled: true,
                              fillColor: const Color.fromARGB(255, 51, 51, 51),
                            ),
                            items: [
                              DropdownMenuItem(
                                child: vibeeText('Private'),
                                value: 'private',
                              ),
                              DropdownMenuItem(
                                child: vibeeText('Public'),
                                value: 'public',
                              ),
                            ],
                            onChanged: (value) {
                              privacy = value;
                            },
                          ),
                        ),
                        const SizedBox(height: 13),
                        InkWell(
                          onTap: () {
                            showVibeeModelBottomSheet(
                                context: context,
                                title: 'Upload Photos / Videos from',
                                buttons: [
                                  vibeeButton(
                                      content: 'Gallery',
                                      onPressed: () {
                                        BlocProvider.of<CreatePostScreenBloc>(
                                                context)
                                            .add(const CreatePostScreenEvent
                                                .pickImageFromStorage());
                                      }),
                                  vibeeButton(
                                      content: 'Camera',
                                      onPressed: () {
                                        BlocProvider.of<CreatePostScreenBloc>(
                                                context)
                                            .add(const CreatePostScreenEvent
                                                .pickImageFromCamera());
                                      })
                                ]);
                          },
                          child: BlocBuilder<CreatePostScreenBloc,
                              CreatePostScreenState>(
                            builder: (context, state) {
                              String? fileName =
                                  state.post?.path.split('/').last;
                              String? extension = fileName?.split('.').last;
                              Widget postPreview;
                              if (state.post == null) {
                                postPreview = Center(
                                    child: vibeeText('Add Photos / Videos'));
                              }
                              //  else if (extension == 'mp4' ||
                              //     extension == 'avi') {
                              //   // supported extensions - /jpeg|jpg|png|webp|mp4|avi|mov|flv|wmv/
                              //   postPreview = Container(
                              //       height: 350,
                              //       width: 300,
                              //       child: VideoPlayerWidget(file: state.post));
                              // }
                              else if (extension == 'jpg' ||
                                  extension == 'png' ||
                                  extension == 'jpeg') {
                                postPreview = Container(
                                  height: 350,
                                  width: 300,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          fit: BoxFit.cover,
                                          image: FileImage(state.post!))),
                                );
                              } else {
                                postPreview = Text('Unable to preview');
                              }
                              return Container(
                                height: 350,
                                width: 300,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      style: BorderStyle.solid,
                                      color: Colors.white),
                                ),
                                child: postPreview,
                              );
                            },
                          ),
                        ),
                        const SizedBox(height: 10),
                        vibeeTextFormField(
                          textController: locationController,
                          hint: "Location",
                          suffixIcon: const Icon(
                            Icons.place_outlined,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(height: 10),
                        vibeeButton(
                            content: "Post",
                            onPressed: () {
                              BlocProvider.of<CreatePostScreenBloc>(context)
                                  .add(CreatePostScreenEvent.createPost(
                                description: descriptionController.text,
                                privacy: privacy,
                                location: locationController.text,
                              ));
                            },
                            height: 35,
                            width: 300),
                        SizedBox(height: 10),
                        vibeeOutlineButton(
                            message: 'Cancel',
                            width: 300,
                            height: 35,
                            borderRadius: 10,
                            onPressed: () {
                              Navigator.of(context).pop();
                            })
                      ],
                    ),
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
