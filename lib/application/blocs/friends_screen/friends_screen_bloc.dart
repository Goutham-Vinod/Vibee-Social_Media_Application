
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/add_or_remove_friend_response_model/add_or_remove_friend_response_model.dart';
import 'package:vibee/domain/models/friends_list_response_model/friends_list_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';

part 'friends_screen_event.dart';
part 'friends_screen_state.dart';
part 'friends_screen_bloc.freezed.dart';

class FriendsScreenBloc extends Bloc<FriendsScreenEvent, FriendsScreenState> {
  FriendsScreenBloc() : super(const _Initial()) {
    on<_InitializePage>((event, emit) async {
      Either<ApiFailure, List<FriendsListResponseModel>> result =
          await APIServices.getFriendsList();
      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (successResult) {
        print(successResult);
        emit(state.copyWith(friendsListResponse: successResult));
      });
    });
    on<_Unfriend>((event, emit) async {
      String friendId = state.friendsListResponse![event.friendIndex].id!;
      Either<ApiFailure, AddOrRemoveFriendResponseModel> result =
          await APIServices.addOrRemoveFriend(friendId: friendId);
      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (successResult) {
        if (state.friendsListResponse != null) {
          List<FriendsListResponseModel> friendsList = [
            ...state.friendsListResponse!
          ];

          for (int i = 0; i < friendsList.length; i++) {
            if (friendsList[i].id == friendId) {
              friendsList.removeAt(i);
            }
          }
          emit(state.copyWith(friendsListResponse: friendsList));
        }
      });
    });
  }
}
