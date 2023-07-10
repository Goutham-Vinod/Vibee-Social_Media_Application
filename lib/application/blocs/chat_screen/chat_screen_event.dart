part of 'chat_screen_bloc.dart';

@freezed
class ChatScreenEvent with _$ChatScreenEvent {
  const factory ChatScreenEvent.started() = _Started;
}
