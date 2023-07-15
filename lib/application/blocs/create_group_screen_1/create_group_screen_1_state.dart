part of 'create_group_screen_1_bloc.dart';

@freezed
class CreateGroupScreen_1State with _$CreateGroupScreen_1State {
  const factory CreateGroupScreen_1State.currentState({
    required bool isScreenLoading,
    String? errorMessage,
    List<FriendsListResponseModel>? friendsListResponse,
    required List<int> selectedGroupMembersIndex,
    List<FriendsListResponseModel>? selectedGroupMembers,
    bool? isGroupMembersAdded,
  }) = _CurrentState;
}
