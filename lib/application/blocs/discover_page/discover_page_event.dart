part of 'discover_page_bloc.dart';

@freezed
class DiscoverPageEvent with _$DiscoverPageEvent {
  const factory DiscoverPageEvent.initializeDiscoverPage() =
      InitializeDiscoverPage;
  const factory DiscoverPageEvent.likePost({
    required int postIndex,
  }) = _LikePost;
  const factory DiscoverPageEvent.sharePostAsMessage({
    required String? friendId,
    required String? postId,
  }) = _SharePostAsMessage;

  const factory DiscoverPageEvent.sharePost({
    required String postId,
    required String description,
    required String privacy,
  }) = _SharePost;

  const factory DiscoverPageEvent.resetIsEmptySharePostDescription() =
      _ResetIsEmptySharePostDescription;
}
