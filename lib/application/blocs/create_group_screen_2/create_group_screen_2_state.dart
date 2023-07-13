part of 'create_group_screen_2_bloc.dart';

@freezed
class CreateGroupScreen_2State with _$CreateGroupScreen_2State {
  const factory CreateGroupScreen_2State.currentState({
    required bool isPageLoading,
    bool? isGroupCreated,
    String? errorMessage,
    List<FriendsListResponseModel>? selectedGroupMembersList,
    CreateGroupConversationResponseModel? createGroupConversationResponse,
    CreateGroupConversationRequestModel? createGroupConversationRequest,
  }) = _CurrentState;
}
