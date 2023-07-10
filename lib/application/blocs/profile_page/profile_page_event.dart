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
}
