part of 'profile_page_bloc.dart';

@freezed
class ProfilePageState with _$ProfilePageState {
  const factory ProfilePageState.initial({
    required String firstName,
    required String lastName,
    required String username,
    required bool isCurrentUserProfile,
    bool? isFriend,
    bool? isFriendRequestSent,
    required bool isPageLoading,
    String? errorMessage,
    String? friendId,
    bool? isFriendRequestRecieved,
    GetUserDetailsResponseModel? getUserDetailsResponse,
  }) = _Initial;
}
