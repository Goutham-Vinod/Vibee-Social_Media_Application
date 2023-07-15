part of 'profile_page_bloc.dart';

@freezed
class ProfilePageEvent with _$ProfilePageEvent {
  const factory ProfilePageEvent.initializeProfilePageBloc({
    String? username,
    required bool isCurrentUserProfile,
  }) = InitializaProfilePageBloc;
  const factory ProfilePageEvent.sentFriendRequest() = SentFriendRequest;
  const factory ProfilePageEvent.cancelFriendRequest() = CancelFriendRequest;
  const factory ProfilePageEvent.unFriend() = UnFriend;
  const factory ProfilePageEvent.acceptFriendRequest() = AcceptFriendRequest;
  const factory ProfilePageEvent.updateProfilePictureUsingCamera() =
      UpdateProfilePictureUsingCamera;
  const factory ProfilePageEvent.updateCoverPictureUsingCamera() =
      UpdateCoverPictureUsingCamera;
  const factory ProfilePageEvent.updateProfilePictureFromStorage() =
      UpdateProfilePictureFromStorage;
  const factory ProfilePageEvent.updateCoverPictureFromStorage() =
      UpdateCoverPictureFromStorage;
  const factory ProfilePageEvent.likePost({
    required int postIndex,
  }) = _LikePost;
  const factory ProfilePageEvent.sharePostAsMessage({
    required String? friendId,
    required String? postId,
  }) = _SharePostAsMessage;

  const factory ProfilePageEvent.sharePost({
    required String postId,
    required String description,
    required String privacy,
  }) = _SharePost;

  const factory ProfilePageEvent.resetIsEmptySharePostDescription() =
      _ResetIsEmptySharePostDescription;
}
