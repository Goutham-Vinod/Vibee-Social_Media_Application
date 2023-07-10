import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/domain/models/get_all_conversations_response_model/get_all_conversations_response_model.dart';

part 'messages_page_event.dart';
part 'messages_page_state.dart';
part 'messages_page_bloc.freezed.dart';

class MessagesPageBloc extends Bloc<MessagesPageEvent, MessagesPageState> {
  MessagesPageBloc()
      : super(const _CurrentState(
          isPageLoading: true,
          errorMessage: null,
          getAllConversationsResponse: null,
        )) {
    on<MessagesPageEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
