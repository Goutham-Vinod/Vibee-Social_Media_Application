part of 'messages_page_bloc.dart';

@freezed
class MessagesPageState with _$MessagesPageState {
  const factory MessagesPageState.currentState({
    required bool isPageLoading,
    String? errorMessage,
    List<GetAllConversationsResponseModel>? getAllConversationsResponse,
  }) = _CurrentState;
}
