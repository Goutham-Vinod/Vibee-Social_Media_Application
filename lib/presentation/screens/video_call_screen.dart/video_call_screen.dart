import 'dart:async';

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:vibee/application/blocs/video_call_screen/video_call_screen_bloc.dart';
import 'package:vibee/core/config.dart';
import 'package:vibee/infrastructure/api_services.dart';
import 'package:vibee/presentation/common_widgets/common_widgets.dart';

class CallScreen extends StatefulWidget {
  CallScreen({
    Key? key,
    required this.chatId,
  }) : super(key: key);

  String chatId;

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  int? _remoteUid;
  bool _localUserJoined = false;
  late RtcEngine _engine;
  String? videoToken;

  @override
  void initState() {
    initPage();

    super.initState();
  }

  Future<void> initPage() async {
    print('chat Id : ${widget.chatId}');
    String? tocken = await APIServices.getAgoraToken(widget.chatId);

    if (tocken != null) {
      videoToken = tocken;

      await initAgora();

      BlocProvider.of<VideoCallScreenBloc>(context).add(
          VideoCallScreenEvent.startVideoCall(conversationId: widget.chatId));
    } else {
      print('something went wrong');
      print("didn't got tocken");
    }
  }

  Future<void> initAgora() async {
    // retrieve permissions
    await [Permission.microphone, Permission.camera].request();

    //create the engine
    _engine = createAgoraRtcEngine();
    await _engine.initialize(const RtcEngineContext(
      appId: Config.agoraAppId,
      channelProfile: ChannelProfileType.channelProfileLiveBroadcasting,
    ));

    _engine.registerEventHandler(
      RtcEngineEventHandler(
        onJoinChannelSuccess: (RtcConnection connection, int elapsed) {
          debugPrint("local user ${connection.localUid} joined");
          setState(() {
            _localUserJoined = true;
          });
        },
        onUserJoined: (RtcConnection connection, int remoteUid, int elapsed) {
          debugPrint("remote user $remoteUid joined");
          setState(() {
            _remoteUid = remoteUid;
          });
        },
        onUserOffline: (RtcConnection connection, int remoteUid,
            UserOfflineReasonType reason) {
          debugPrint("remote user $remoteUid left channel");
          setState(() {
            _remoteUid = null;
          });
        },
        onTokenPrivilegeWillExpire: (RtcConnection connection, String token) {
          debugPrint(
              '[onTokenPrivilegeWillExpire] connection: ${connection.toJson()}, token: $token');
        },
      ),
    );

    await _engine.setClientRole(role: ClientRoleType.clientRoleBroadcaster);
    await _engine.enableVideo();
    await _engine.startPreview();

    await _engine.joinChannel(
      token: videoToken!,
      channelId: widget.chatId, // <---- channel name here
      uid: 0,
      options: const ChannelMediaOptions(),
    );
  }

  leaveCall() async {
    setState(() {
      _localUserJoined = false;
      _remoteUid = null;
    });
    await _engine.leaveChannel();
    _engine.release();
  }

  // Create UI with local view and remote view
  @override
  Widget build(BuildContext context) {
    return BlocListener<VideoCallScreenBloc, VideoCallScreenState>(
      listener: (context, state) {
        if (state.isCallDisconnected == true) {
          Navigator.pop(context);
        }
        if (state.isCallRejected == true) {
          Navigator.pop(context);
          showSnackBar(
            context: context,
            message: 'Call Declined',
            textColor: Colors.white,
            backgroundColor: Colors.red,
          );
        }
      },
      child: WillPopScope(
        onWillPop: () async => true,
        child: Scaffold(
          backgroundColor: backgroundScreenColor,
          body: SafeArea(
            child: videoToken == null
                ? const Center(
                    child: CircularProgressIndicator(),
                  )
                : Stack(
                    children: [
                      Center(
                        child: _remoteVideo(), // video of current user's friend
                      ),
                      Align(
                        /// video of current
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: _remoteUid == null ? double.maxFinite : 100,
                          height: _remoteUid == null ? double.maxFinite : 150,
                          child: Center(
                            child: _localUserJoined
                                ? AgoraVideoView(
                                    controller: VideoViewController(
                                      rtcEngine: _engine,
                                      canvas: const VideoCanvas(uid: 0),
                                    ),
                                  )
                                : const CircularProgressIndicator(),
                          ),
                        ),
                      ),
                      videoCallToolBar(),
                    ],
                  ),
          ),
        ),
      ),
    );
  }

  switchCamera() {
    _engine.switchCamera();
  }

  // Display remote user's video
  // ( video of current user's friend )
  Widget _remoteVideo() {
    if (_remoteUid != null) {
      return AgoraVideoView(
        controller: VideoViewController.remote(
          rtcEngine: _engine,
          canvas: VideoCanvas(uid: _remoteUid),
          connection: RtcConnection(
              channelId: widget.chatId), // <---- channel name here
        ),
      );
    } else {
      return const Text(
        '',
        textAlign: TextAlign.center,
      );
    }
  }

  Widget videoCallToolBar() {
    return Container(
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.symmetric(vertical: 48),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<VideoCallScreenBloc, VideoCallScreenState>(
            builder: (context, state) {
              return RawMaterialButton(
                onPressed: () {
                  BlocProvider.of<VideoCallScreenBloc>(context)
                      .add(const VideoCallScreenEvent.mute());
                },
                shape: const CircleBorder(),
                elevation: 2.0,
                fillColor: state.muted ? vibeePurple : Colors.white,
                padding: const EdgeInsets.all(12.0),
                child: Icon(
                  state.muted ? Icons.mic_off : Icons.mic,
                  color: state.muted ? Colors.white : vibeePurple,
                  size: 20.0,
                ),
              );
            },
          ),
          RawMaterialButton(
            onPressed: () async {
              await leaveCall();

              BlocProvider.of<VideoCallScreenBloc>(context).add(
                  VideoCallScreenEvent.disconnectCall(
                      conversationId: widget.chatId));
              Navigator.pop(context);
            },
            shape: const CircleBorder(),
            elevation: 2.0,
            fillColor: Colors.redAccent,
            padding: const EdgeInsets.all(15.0),
            child: const Icon(
              Icons.call_end,
              color: Colors.white,
              size: 35.0,
            ),
          ),
          RawMaterialButton(
            onPressed: () {
              switchCamera();
            },
            shape: const CircleBorder(),
            elevation: 2.0,
            fillColor: Colors.white,
            padding: const EdgeInsets.all(12.0),
            child: const Icon(
              Icons.switch_camera,
              color: vibeePurple,
              size: 20.0,
            ),
          )
        ],
      ),
    );
  }
}
