part of 'comments_screen_bloc.dart';

@freezed
class CommentsScreenEvent with _$CommentsScreenEvent {
  const factory CommentsScreenEvent.initalizeCommentsScreen(
      {required String postId}) = _InitializeCommentScreen;
  const factory CommentsScreenEvent.sentComment({
    required String postId,
    required String comment,
  }) = _SentComment;
}
