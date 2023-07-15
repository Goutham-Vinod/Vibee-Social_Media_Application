part of 'friends_screen_bloc.dart';

@freezed
class FriendsScreenEvent with _$FriendsScreenEvent {
  const factory FriendsScreenEvent.initializePage() = _InitializePage;
  const factory FriendsScreenEvent.unfriend({
    required int friendIndex,
  }) = _Unfriend;
}
