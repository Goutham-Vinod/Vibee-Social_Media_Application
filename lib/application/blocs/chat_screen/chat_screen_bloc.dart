import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/get_message_response_model/get_message_response_model.dart';
import 'package:vibee/domain/models/sent_message_response_model/sent_message_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';

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
      Either<ApiFailure, GetMessageResponseModel> result =
          await APIServices.getMessage(conversationId: event.chatId);

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (successResult) {
        emit(state.copyWith(getMessageResponse: successResult));
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
        });
      }
    });
  }
}
