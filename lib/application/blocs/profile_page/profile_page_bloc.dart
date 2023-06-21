import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/get_user_details_response_model/get_user_details_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';

part 'profile_page_event.dart';
part 'profile_page_state.dart';
part 'profile_page_bloc.freezed.dart';

class ProfilePageBloc extends Bloc<ProfilePageEvent, ProfilePageState> {
  ProfilePageBloc()
      : super(const _Initial(
          firstName: '',
          lastName: '',
          username: '',
          isCurrentUserProfile: true,
          isPageLoading: true,
          getUserDetailsResponse: null,
        )) {
    on<InitializaProfilePageBloc>((event, emit) async {
      if (event.isCurrentUserProfile == false) {
        Either<ApiFailure, GetUserDetailsResponseModel> result =
            await APIServices.getUserDetails(username: event.username!);

        emit(result.fold(
            (failure) => state.copyWith(
                  errorMessage: failure.errorMessage,
                  isPageLoading: false,
                ),
            (userDetails) => state.copyWith(
                  isFriend: userDetails.friend,
                  isFriendRequestSent: userDetails.pending,
                  isFriendRequestRecieved: userDetails.requestReceived,
                  errorMessage: null,
                  isPageLoading: false,
                  isCurrentUserProfile: false,
                  friendId: userDetails.user?.id,
                  getUserDetailsResponse: userDetails,
                )));
      }
    });
    on<SentFriendRequest>((event, emit) async {
      Either<ApiFailure, bool> result =
          await APIServices.addOrRemoveFriend(friendId: state.friendId);
      result.fold(
          (failure) => emit(state.copyWith(
                errorMessage: failure.errorMessage,
                isPageLoading: false,
              )), (success) {
        emit(state.copyWith(
          isFriendRequestSent: true,
          isFriend: false,
          isFriendRequestRecieved: false,
        ));
      });
    });
    on<CancelFriendRequest>((event, emit) async {
      Either<ApiFailure, bool> result =
          await APIServices.addOrRemoveFriend(friendId: state.friendId);
      result.fold(
          (failure) => emit(state.copyWith(
                errorMessage: failure.errorMessage,
                isPageLoading: false,
              )), (success) {
        emit(state.copyWith(
          isFriendRequestSent: false,
          isFriend: false,
          isFriendRequestRecieved: false,
        ));
      });
    });
    on<UnFriend>((event, emit) async {
      Either<ApiFailure, bool> result =
          await APIServices.addOrRemoveFriend(friendId: state.friendId);
      result.fold(
          (failure) => emit(state.copyWith(
                errorMessage: failure.errorMessage,
                isPageLoading: false,
              )), (success) {
        emit(state.copyWith(
          isFriendRequestSent: false,
          isFriend: false,
          isFriendRequestRecieved: false,
        ));
      });
    });
    on<AcceptFriendRequest>((event, emit) async {
      Either<ApiFailure, bool> result =
          await APIServices.addOrRemoveFriend(friendId: state.friendId);
      result.fold(
          (failure) => emit(state.copyWith(
                errorMessage: failure.errorMessage,
                isPageLoading: false,
              )), (success) {
        emit(state.copyWith(
          isFriendRequestSent: false,
          isFriend: true,
          isFriendRequestRecieved: false,
        ));
      });
    });
  }
}
