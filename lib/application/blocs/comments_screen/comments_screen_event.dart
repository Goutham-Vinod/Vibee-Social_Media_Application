part of 'comments_screen_bloc.dart';

@freezed
class CommentsScreenEvent with _$CommentsScreenEvent {
  const factory CommentsScreenEvent.initalizeCommentsScreen(
      {required String postId,required bool isLiked}) = _InitializeCommentScreen;
  const factory CommentsScreenEvent.sentComment({
    required String postId,
    required String comment,
  }) = _SentComment;
  const factory CommentsScreenEvent.likePost(
 
  ) = _LikePost;
}
