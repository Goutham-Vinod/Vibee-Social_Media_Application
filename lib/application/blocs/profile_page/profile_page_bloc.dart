import 'dart:developer';
import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/get_post_by_one_user_response_model/get_post_by_one_user_response_model.dart';
import 'package:vibee/domain/models/get_user_details_response_model/get_user_details_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';
import 'package:vibee/infrastructure/camera_repository.dart';
import 'package:vibee/infrastructure/file_repository.dart';

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
          isCoverPictureLoading: false,
          isProfilePictureLoading: false,
        )) {
    on<InitializaProfilePageBloc>((event, emit) async {
      print('intialize');
      if (event.isCurrentUserProfile == false) {
        // another user profile
        Either<ApiFailure, GetUserDetailsResponseModel> result =
            await APIServices.getUserDetails(username: event.username!);

        Either<ApiFailure, GetPostByOneUserResponseModel>
            getPostByOneUserResult =
            await APIServices.getPostByOneUser(username: event.username!);

        emit(result.fold(
            (failure) => state.copyWith(
                  errorMessage: failure.errorMessage,
                  isPageLoading: false,
                  isCoverPictureLoading: false,
                  isProfilePictureLoading: false,
                ),
            (userDetails) => state.copyWith(
                  isFriend: userDetails.friend,
                  isFriendRequestSent: userDetails.pending,
                  isFriendRequestRecieved: userDetails.requestReceived,
                  errorMessage: null,
                  isPageLoading: false,
                  isCurrentUserProfile: false,
                  friendId: userDetails.user?.id,
                  firstName: userDetails.user?.firstName ?? '',
                  lastName: userDetails.user?.lastName ?? '',
                  username: userDetails.user?.username ?? '',
                  getUserDetailsResponse: userDetails,
                  profilePicture: userDetails.user?.profilePicture,
                )));

        getPostByOneUserResult.fold((failure) {
          emit(state.copyWith(errorMessage: failure.errorMessage));
        }, (successResult) {
          emit(state.copyWith(getPostByOneUserResponse: successResult));
        });

        print(' first name : ${state.firstName}');
        // print(' first name at server : ${userDetails.user?.firstName}');
      } else {
        // current user profile
        await APIServices.GetCurrentUserDetailsResponse();

        Either<ApiFailure, GetPostByOneUserResponseModel> result =
            await APIServices.getPostByOneUser(
                username:
                    CommonVariables.currentUserDetailsResponse!.username!);

        result.fold((failure) {
          emit(
            state.copyWith(
              firstName:
                  CommonVariables.currentUserDetailsResponse?.firstName ?? '',
              lastName:
                  CommonVariables.currentUserDetailsResponse?.lastName ?? '',
              isCurrentUserProfile: true,
              username:
                  CommonVariables.currentUserDetailsResponse?.username ?? '',
              errorMessage: failure.errorMessage,
            ),
          );
          emit(state.copyWith(errorMessage: null));
        }, (successResponse) {
          emit(
            state.copyWith(
              firstName:
                  CommonVariables.currentUserDetailsResponse?.firstName ?? '',
              lastName:
                  CommonVariables.currentUserDetailsResponse?.lastName ?? '',
              isCurrentUserProfile: true,
              username:
                  CommonVariables.currentUserDetailsResponse?.username ?? '',
              getPostByOneUserResponse: successResponse,
              profilePicture:
                  CommonVariables.currentUserDetailsResponse?.profilePicture,
            ),
          );
        });
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

    on<UpdateProfilePictureUsingCamera>((event, emit) async {
      emit(state.copyWith(
        isProfilePictureLoading: true,
        isCurrentUserProfile: true,
      ));
      File? pickedImage = await CameraRepository.getImageFromCamera();
      if (CommonVariables.currentUserDetailsResponse != null &&
          pickedImage != null) {
        Either<ApiFailure, bool> result = await APIServices.editProfile(
          profilePicture: pickedImage,
        );
        result.fold((failure) {
          emit(state.copyWith(
            errorMessage: failure.errorMessage,
            isProfilePictureLoading: false,
          ));
        }, (success) {
          emit(state.copyWith(
            isProfilePictureLoading: false,
          ));
          print('emit success');
          add(const ProfilePageEvent.initializeProfilePageBloc(
              isCurrentUserProfile: true));
        });
      }
    });

    on<UpdateCoverPictureUsingCamera>((event, emit) async {
      emit(state.copyWith(
        isCoverPictureLoading: true,
        // isCurrentUserProfile: true,
      ));
      File? pickedImage = await CameraRepository.getImageFromCamera();
      if (CommonVariables.currentUserDetailsResponse != null &&
          pickedImage != null) {
        Either<ApiFailure, bool> result = await APIServices.editProfile(
          coverPicture: pickedImage,
        );
        result.fold((failure) {
          emit(state.copyWith(
            errorMessage: failure.errorMessage,
            isCoverPictureLoading: false,
          ));
        }, (success) {
          emit(state.copyWith(
            isCoverPictureLoading: false,
          ));
          print('emit success');
          add(const ProfilePageEvent.initializeProfilePageBloc(
              isCurrentUserProfile: true));
        });
      }
    });

    on<UpdateProfilePictureFromStorage>((event, emit) async {
      emit(state.copyWith(
        isProfilePictureLoading: true,
        isCurrentUserProfile: true,
      ));
      File? pickedImage = await FileRepository.getImage();
      if (CommonVariables.currentUserDetailsResponse != null &&
          pickedImage != null) {
        Either<ApiFailure, bool> result = await APIServices.editProfile(
          profilePicture: pickedImage,
        );
        result.fold((failure) {
          emit(state.copyWith(
            errorMessage: failure.errorMessage,
            isProfilePictureLoading: false,
          ));
        }, (success) {
          emit(state.copyWith(
            isProfilePictureLoading: false,
          ));
          print('emit success');
          add(const ProfilePageEvent.initializeProfilePageBloc(
              isCurrentUserProfile: true));
        });
      }
    });

    on<UpdateCoverPictureFromStorage>((event, emit) async {
      emit(state.copyWith(
        isCoverPictureLoading: true,
        isCurrentUserProfile: true,
      ));
      File? pickedImage = await FileRepository.getImage();
      if (CommonVariables.currentUserDetailsResponse != null &&
          pickedImage != null) {
        Either<ApiFailure, bool> result = await APIServices.editProfile(
          coverPicture: pickedImage,
        );
        result.fold((failure) {
          emit(state.copyWith(
            errorMessage: failure.errorMessage,
            isCoverPictureLoading: false,
          ));
        }, (success) {
          emit(state.copyWith(
            isCoverPictureLoading: false,
          ));
          print('emit success');
          add(const ProfilePageEvent.initializeProfilePageBloc(
              isCurrentUserProfile: true));
        });
      }
    });

///////////////////////////////////////////
  }
}
