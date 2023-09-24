import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/get_all_conversations_response_model/get_all_conversations_response_model.dart';
import 'package:vibee/domain/models/online_friends_response_model/online_friends_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';

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
    on<_InitializeMessagePage>((event, emit) async {
      Either<ApiFailure, List<GetAllConversationsResponseModel>> result =
          await APIServices.getAllConversations();

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        emit(state.copyWith(getAllConversationsResponse: success));
      });

      //  add();
    });

    on<_CheckOnlineUsers>((event, emit) async {
      Either<ApiFailure, List<OnlineFriendsResponseModel>> result =
          await APIServices.checkOnlineFriends();
      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (successResult) {
        List<String> onlineFriends = [];

// successResult[i].userId?.id == state.getMessageResponse?.users?[0].id
        for (var element in successResult) {
          String friendId = element.userId?.id ?? '';
          onlineFriends.add(friendId);
        }

        emit(state.copyWith(onlineFriendsIdList: onlineFriends));
      });
    });
  }
}
