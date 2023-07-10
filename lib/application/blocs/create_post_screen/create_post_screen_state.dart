part of 'create_post_screen_bloc.dart';

@freezed
class CreatePostScreenState with _$CreatePostScreenState {
  const factory CreatePostScreenState.currentState({
    required bool isScreenLoading,
    required bool isFrontendValidationSuccess,
    String? errorMessage,
    required bool isUploadInProgress,
    required bool isUploadPostSuccess,
    required bool isImageLoading,
    File? postImage,
  }) = _CurrentState;
}
