part of 'video_call_screen_bloc.dart';

@freezed
class VideoCallScreenState with _$VideoCallScreenState {
  const factory VideoCallScreenState.initial({
    bool? isCallEnded,
    String? errorMessage,
    String? videoCallToken,
   required  bool localUserJoined ,
 required bool initializationDone,
   String? chatId,
 required bool muted,
 required List<int> users,

  }) = _Initial;
}
