part of 'chat_screen_bloc.dart';

@freezed
class ChatScreenState with _$ChatScreenState {
  const factory ChatScreenState.currentState({
    required bool isPageLoading,
    String? errorMessage,
    GetMessageResponseModel? getMessageResponse,
    bool? isMessageSentOrRecieved,
  }) = _CurrentState;
}
