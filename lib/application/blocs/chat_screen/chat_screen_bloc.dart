import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/domain/models/get_message_response_model/get_message_response_model.dart';

part 'chat_screen_event.dart';
part 'chat_screen_state.dart';
part 'chat_screen_bloc.freezed.dart';

class ChatScreenBloc extends Bloc<ChatScreenEvent, ChatScreenState> {
  ChatScreenBloc()
      : super(const _CurrentState(
          isPageLoading: true,
          errorMessage: null,
          getMessage: null,
        )) {
    on<ChatScreenEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
