part of 'comments_screen_bloc.dart';

@freezed
class CommentsScreenState with _$CommentsScreenState {
  const factory CommentsScreenState.current({
    required bool isScreenLoading,
    required bool isFrontendValidationSuccess,
    String? errorMessage,
    required bool isUploadCommentSuccess,
    required bool isImageLoading,
    String? postImageUrl,
    List<LoadCommentsResponseModel?>? loadCommentsResponse,
    String? postId,
    bool? isLiked,
  }) = _Current;
}
