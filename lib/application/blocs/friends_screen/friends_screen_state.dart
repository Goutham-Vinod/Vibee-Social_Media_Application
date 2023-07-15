part of 'friends_screen_bloc.dart';

@freezed
class FriendsScreenState with _$FriendsScreenState {
  const factory FriendsScreenState.initial({
    List<FriendsListResponseModel>? friendsListResponse,
    String? errorMessage,
    String? showMessage,
  }) = _Initial;
}
