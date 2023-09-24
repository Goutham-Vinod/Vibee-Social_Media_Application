part of 'comments_screen_bloc.dart';

@freezed
class CommentsScreenState with _$CommentsScreenState {
  const factory CommentsScreenState.current({
    String? showMessage,
    required bool isScreenLoading,
    required bool isFrontendValidationSuccess,
    String? errorMessage,
    required bool isUploadCommentSuccess,
    required bool isImageLoading,
    String? postImageUrl,
    List<LoadCommentsResponseModel?>? loadCommentsResponse,
     bool? isSharePostDescriptionEmpty,
    String? postId,
    bool? isLiked,
     List<GetAllConversationsResponseModel>? getAllConversationsResponseList,
  }) = _Current;
}
