import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/discover_response_model/discover_response_model.dart';
import 'package:vibee/domain/models/get_all_conversations_response_model/get_all_conversations_response_model.dart';
import 'package:vibee/domain/models/like_dislike_response_model/like_dislike_response_model.dart';
import 'package:vibee/domain/models/share_post_as_message_request_model/share_post_as_message_request_model.dart';
import 'package:vibee/domain/models/share_post_as_message_response_model/share_post_as_message_response_model.dart';
import 'package:vibee/domain/models/share_post_request_model/share_post_request_model.dart';
import 'package:vibee/domain/models/share_post_response_model/share_post_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';
import 'package:vibee/infrastructure/socket_io_services.dart';

part 'discover_page_event.dart';
part 'discover_page_state.dart';
part 'discover_page_bloc.freezed.dart';

class DiscoverPageBloc extends Bloc<DiscoverPageEvent, DiscoverPageState> {
  DiscoverPageBloc()
      : super(const _CurrentState(
          isScreenLoading: true,
          errorMessage: null,
          discoverResponse: null,
          likedPostIndexList: [],
        )) {
    on<InitializeDiscoverPage>((event, emit) async {
      Either<ApiFailure, DiscoverResponseModel> result =
          await APIServices.discoverPosts();
      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (successResult) {
        List<int> likedPostsIndexList = [];

        for (int i = 0; i < successResult.posts!.length; i++) {
          if (successResult.posts?[i].likes
                  ?.contains(CommonVariables.currentUserDetailsResponse?.id) ??
              false) {
            likedPostsIndexList.add(i);
          }
        }

        emit(
          state.copyWith(
            isScreenLoading: false,
            discoverResponse: successResult,
            likedPostIndexList: likedPostsIndexList,
          ),
        );
      });
      Either<ApiFailure, List<GetAllConversationsResponseModel>>
          getAllConversationsResult = await APIServices.getAllConversations();

      getAllConversationsResult.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        emit(state.copyWith(getAllConversationsResponseList: success));
      });
    });

    on<_LikePost>((event, emit) async {
// initializing likedPostIndexList
      List<int> likedPostIndexList = [...state.likedPostIndexList];

//frontend part below

      if (likedPostIndexList.contains(event.postIndex)) {
        likedPostIndexList.remove(event.postIndex);
        emit(state.copyWith(likedPostIndexList: likedPostIndexList));
      } else {
        likedPostIndexList.add(event.postIndex);
        emit(state.copyWith(likedPostIndexList: likedPostIndexList));
      }

// backend part below
      String postId = state.discoverResponse!.posts![event.postIndex].id!;
      print('liked $postId');
      Either<ApiFailure, LikeDislikeResponseModel> result =
          await APIServices.likeOrDislike(postId: postId);

      result.fold((failure) {
        print('error');
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        if (success.notification != null) {
          SocketIoServices.likeDislike(success.notification!);
        }
      });
    });

    on<_SharePost>((event, emit) async {
      if (event.description.isNotEmpty) {
        Either<ApiFailure, SharePostResponseModel> result =
            await APIServices.sharePost(
                sharePostRequest: SharePostRequestModel(
                    description: event.description,
                    privacy: event.privacy,
                    shared: false,
                    sharedPostId: event.postId));

        result.fold((failure) {
          emit(state.copyWith(errorMessage: failure.errorMessage));
          emit(state.copyWith(errorMessage: null));
        }, (success) {
          emit(state.copyWith(
              showMessage: 'Post Shared', isSharePostDescriptionEmpty: null));
          emit(state.copyWith(showMessage: null));
        });
      } else {
        emit(state.copyWith(isSharePostDescriptionEmpty: null));
        emit(state.copyWith(isSharePostDescriptionEmpty: true));
      }
    });

    on<_SharePostAsMessage>((event, emit) async {
      Either<ApiFailure, SharePostAsMessageResponseModel> result =
          await APIServices.sharePostAsMessage(
              sharePostAsMessageRequest: SharePostAsMessageRequestModel(
                  checked: [event.friendId!], postId: event.postId));

      result.fold((failure) {
        // emit(state.copyWith(errorMessage: failure.errorMessage));
        // emit(state.copyWith(errorMessage: null));
      }, (successResult) {
        emit(state.copyWith(showMessage: 'Post Sent Successfully'));

        emit(state.copyWith(showMessage: null));
      });
    });

    on<_ResetIsEmptySharePostDescription>((event, emit) {
      emit(state.copyWith(isSharePostDescriptionEmpty: null));
    });
  }
}
