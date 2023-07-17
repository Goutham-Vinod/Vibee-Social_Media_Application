import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/get_message_response_model/get_message_response_model.dart';
import 'package:vibee/domain/models/online_friends_response_model/online_friends_response_model.dart';
import 'package:vibee/domain/models/sent_message_response_model/sent_message_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';
import 'package:vibee/infrastructure/socket_io_services.dart';

part 'chat_screen_event.dart';
part 'chat_screen_state.dart';
part 'chat_screen_bloc.freezed.dart';

class ChatScreenBloc extends Bloc<ChatScreenEvent, ChatScreenState> {
  ChatScreenBloc()
      : super(const _CurrentState(
          isPageLoading: true,
          errorMessage: null,
          getMessageResponse: null,
        )) {
    on<_InitializeScreen>((event, emit) async {
      // page initialization
      Either<ApiFailure, GetMessageResponseModel> result =
          await APIServices.getMessage(conversationId: event.chatId);

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (successResult) {
        emit(state.copyWith(getMessageResponse: successResult));
      });

      add(const ChatScreenEvent.iSOnline());

      // listening socket io events
      SocketIoServices.listenLatestMessageEvent(() {
        add(ChatScreenEvent.initializeScreen(chatId: event.chatId));
      });

      SocketIoServices.joinChat(state.getMessageResponse!);
      SocketIoServices.listenCheckOnlineUsersEvent(() {
        add(const ChatScreenEvent.iSOnline());
      });
    });

    on<_IsOnline>((event, emit) async {
      Either<ApiFailure, List<OnlineFriendsResponseModel>> result =
          await APIServices.checkOnlineFriends();
      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (successResult) {
        emit(state.copyWith(isOnline: false));

        for (int i = 0; i < successResult.length; i++) {
          if (successResult[i].userId?.id ==
                  state.getMessageResponse?.users?[0].id &&
              state.getMessageResponse?.isGroupChat != true) {
            emit(state.copyWith(isOnline: true));
          }
        }
      });
    });

    on<_SendMessage>((event, emit) async {
      if (event.message != null) {
        Either<ApiFailure, SentMessageResponseModel> result =
            await APIServices.sentMessage(
                conversationId: state.getMessageResponse!.id!,
                message: event.message!);

        result.fold((failure) {
          emit(state.copyWith(errorMessage: failure.errorMessage));
          emit(state.copyWith(errorMessage: null));
        }, (success) {
          add(_InitializeScreen(chatId: state.getMessageResponse!.id!));
          emit(state.copyWith(isMessageSentOrRecieved: true));
          emit(state.copyWith(isMessageSentOrRecieved: null));
          SocketIoServices.joinChat(state.getMessageResponse!);
        });
      }
    });
  }
}
