part of 'create_post_screen_bloc.dart';

@freezed
class CreatePostScreenEvent with _$CreatePostScreenEvent {
  const factory CreatePostScreenEvent.createPost({
    String? description,
    String? privacy,
    File? photoOrVideo,
    String? location,
  }) = CreatePost;
  const factory CreatePostScreenEvent.pickImageFromCamera() =
      pickImageFromCamera;
  const factory CreatePostScreenEvent.pickImageFromStorage() =
      pickImageFromStorage;
}
