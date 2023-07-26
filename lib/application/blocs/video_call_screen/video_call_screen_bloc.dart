import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/core/config.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/infrastructure/api_services.dart';
import 'package:vibee/infrastructure/socket_io_services.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../domain/models/video_call_response_model/video_call_response_model.dart';

part 'video_call_screen_event.dart';
part 'video_call_screen_state.dart';
part 'video_call_screen_bloc.freezed.dart';

class VideoCallScreenBloc
    extends Bloc<VideoCallScreenEvent, VideoCallScreenState> {
  VideoCallScreenBloc()
      : super(const _Initial(
            localUserJoined: false,
            muted: false,
            users: [],
            initializationDone: false)) {
    on<_StartVideoCall>((event, emit) async {
      Either<ApiFailure, VideoCallResponseModel> result =
          await APIServices.videoCallApi(event.conversationId);
      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (successResult) {
        SocketIoServices.videoCall(successResult);
        emit(state.copyWith(initializationDone: true));
      });
    });

    on<_LocalUserJoined>((event, emit) {
      emit(state.copyWith(localUserJoined: true));
    });

    on<_Mute>((event, emit) {
      bool muted = state.muted;
      muted = !muted;
      emit(state.copyWith(muted: muted));
    });

    on<_AddRemoteUid>((event, emit) {
      List<int> users = [...state.users];
      users.add(event.remoteUid);
      emit(state.copyWith(users: users));
    });

    on<_RemoveRemoteUid>((event, emit) {
      List<int> users = [...state.users];
      users.remove(event.remoteUid);
      emit(state.copyWith(users: users));
    });

////
  }
}
