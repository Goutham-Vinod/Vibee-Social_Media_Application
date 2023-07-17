part of 'messages_page_bloc.dart';

@freezed
class MessagesPageEvent with _$MessagesPageEvent {
  const factory MessagesPageEvent.initializeMessagePage() =
      _InitializeMessagePage;
       const factory MessagesPageEvent.checkOnlineUsers() = _CheckOnlineUsers;
}
