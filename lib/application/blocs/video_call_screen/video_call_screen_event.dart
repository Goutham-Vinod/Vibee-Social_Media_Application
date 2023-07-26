part of 'video_call_screen_bloc.dart';

@freezed
class VideoCallScreenEvent with _$VideoCallScreenEvent {
  const factory VideoCallScreenEvent.startVideoCall({required String conversationId}) = _StartVideoCall;

          const factory VideoCallScreenEvent.initAgora({required String channelName}) =
      _InitAgora;
          const factory VideoCallScreenEvent.mute() =
      _Mute;
  
                const factory VideoCallScreenEvent.localUserJoined() =
      _LocalUserJoined;

                    const factory VideoCallScreenEvent.addRemoteUid({required int remoteUid}) =
      _AddRemoteUid;


                    const factory VideoCallScreenEvent.removeRemoteUid({required int remoteUid}) =
      _RemoveRemoteUid;
      
}