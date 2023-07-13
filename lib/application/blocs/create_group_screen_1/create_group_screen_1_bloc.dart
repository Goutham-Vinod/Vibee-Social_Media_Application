import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/friends_list_response_model/friends_list_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';

part 'create_group_screen_1_event.dart';
part 'create_group_screen_1_state.dart';
part 'create_group_screen_1_bloc.freezed.dart';

class CreateGroupScreen_1Bloc
    extends Bloc<CreateGroupScreen_1Event, CreateGroupScreen_1State> {
  CreateGroupScreen_1Bloc()
      : super(const _CurrentState(
          isScreenLoading: true,
          selectedGroupMembersIndex: [],
        )) {
    on<_InitializePage>((event, emit) async {
      Either<ApiFailure, List<FriendsListResponseModel>> result =
          await APIServices.getFriendsList();
      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (successResult) {
        emit(state.copyWith(friendsListResponse: successResult));
      });
    });

    on<_AddFriend>((event, emit) {
      List<int> updatedSelectedGroupMembersIndexList = [
        ...state.selectedGroupMembersIndex
      ];

      if (state.selectedGroupMembersIndex.contains(event.selectedIndex)) {
        updatedSelectedGroupMembersIndexList.remove(event.selectedIndex);
      } else {
        updatedSelectedGroupMembersIndexList.add(event.selectedIndex);
      }

      emit(state.copyWith(
          selectedGroupMembersIndex: updatedSelectedGroupMembersIndexList));
    });

    on<_NavigateToNextScreen>((event, emit) {
      List<FriendsListResponseModel> selectedGroupMembers = [];

      state.selectedGroupMembersIndex.forEach((element) {
        selectedGroupMembers.add(state.friendsListResponse![element]);
      });

      if (selectedGroupMembers.isNotEmpty) {
        emit(state.copyWith(
            isGroupMembersAdded: true,
            selectedGroupMembers: selectedGroupMembers));
        emit(state.copyWith(isGroupMembersAdded: null));
      } else {
        emit(state.copyWith(
            errorMessage: 'Please select atleast one participants'));
        emit(state.copyWith(errorMessage: null));
      }
    });

    //////////
  }
}
