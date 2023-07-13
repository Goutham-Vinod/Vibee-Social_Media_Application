part of 'home_page_bloc.dart';

@freezed
class HomePageEvent with _$HomePageEvent {
  const factory HomePageEvent.initializeHomePage() = _InitializeHomePage;
  const factory HomePageEvent.likePost({
    required int postIndex,
  }) = _LikePost;
  const factory HomePageEvent.sharePostAsMessage({
    required String? friendId,
    required String? postId,
  }) = _SharePostAsMessage;
  const factory HomePageEvent.sharePost({
    required String postId,
    required String description,
    required String privacy,
  }) = _SharePost;
  const factory HomePageEvent.resetIsEmptySharePostDescription() =
      _ResetIsEmptySharePostDescription;
}
