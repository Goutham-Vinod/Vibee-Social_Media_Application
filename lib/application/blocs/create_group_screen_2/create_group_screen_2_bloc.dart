
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/create_group_conversation_request_model/create_group_conversation_request_model.dart';
import 'package:vibee/domain/models/create_group_conversation_response_model/create_group_conversation_response_model.dart';
import 'package:vibee/domain/models/friends_list_response_model/friends_list_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';

part 'create_group_screen_2_event.dart';
part 'create_group_screen_2_state.dart';
part 'create_group_screen_2_bloc.freezed.dart';

class CreateGroupScreen_2Bloc
    extends Bloc<CreateGroupScreen_2Event, CreateGroupScreen_2State> {
  CreateGroupScreen_2Bloc()
      : super(const _CurrentState(
          isPageLoading: true,
          isGroupCreated: false,
        )) {
    on<_InitializePage>((event, emit) async {
      emit(state.copyWith(
          selectedGroupMembersList: event.selectedGroupMembersList));
    });

    on<CreateGroupScreen_2Event>((event, emit) async {
      List<String> selectedGroupMembersIdList = [];

      if (event.groupName != null && event.groupName!.isNotEmpty) {
        state.selectedGroupMembersList?.forEach((groupMember) {
          selectedGroupMembersIdList.add(groupMember.id!);
        });

        Either<ApiFailure, bool> result =
            await APIServices.createGroupConversation(
                createGroupConversationRequest:
                    CreateGroupConversationRequestModel(
          chatName: event.groupName,
          isGroupChat: true,
          members: selectedGroupMembersIdList,
        ));
        result.fold((failure) {
          emit(state.copyWith(errorMessage: failure.errorMessage));
        }, (successResult) {
          emit(state.copyWith(isGroupCreated: true));
          emit(state.copyWith(isGroupCreated: null));
        });
      } else {
        emit(state.copyWith(errorMessage: 'Please enter a group name'));
        emit(state.copyWith(errorMessage: null));
      }
    });

    ////////////////
  }
}
