part of 'create_group_screen_1_bloc.dart';

@freezed
class CreateGroupScreen_1Event with _$CreateGroupScreen_1Event {
  const factory CreateGroupScreen_1Event.initializePage() = _InitializePage;
  const factory CreateGroupScreen_1Event.addFriend({
    required String friendId,
    required int selectedIndex,
  }) = _AddFriend;
  const factory CreateGroupScreen_1Event.navigateToNextScreen() =
      _NavigateToNextScreen;
}
