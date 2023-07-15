part of 'create_group_screen_2_bloc.dart';

@freezed
class CreateGroupScreen_2Event with _$CreateGroupScreen_2Event {
  const factory CreateGroupScreen_2Event.createGroup({
    required String groupName,
  }) = _CreateGroup;
  const factory CreateGroupScreen_2Event.initializePage({
    required List<FriendsListResponseModel> selectedGroupMembersList,
    String? groupName,
  }) = _InitializePage;
}
