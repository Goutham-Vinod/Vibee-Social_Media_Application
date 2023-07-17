import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/core/common_variables.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/get_all_conversations_response_model/get_all_conversations_response_model.dart';
import 'package:vibee/domain/models/get_posts_response_model/get_posts_response_model.dart';
import 'package:vibee/domain/models/like_dislike_response_model/like_dislike_response_model.dart';
import 'package:vibee/domain/models/share_post_as_message_request_model/share_post_as_message_request_model.dart';
import 'package:vibee/domain/models/share_post_as_message_response_model/share_post_as_message_response_model.dart';
import 'package:vibee/domain/models/share_post_request_model/share_post_request_model.dart';
import 'package:vibee/domain/models/share_post_response_model/share_post_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';
import 'package:vibee/infrastructure/socket_io_services.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc()
      : super(const _Initial(
          isLoading: true,
          errorMessage: null,
          getPostsResponse: null,
          likedPostIndexList: [],
          showMessage: null,
          isSharePostDescriptionEmpty: null,
        )) {
    on<_InitializeHomePage>((event, emit) async {
      Either<ApiFailure, GetPostsResponseModel> result =
          await APIServices.getPostResponse();
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
            isLoading: false,
            getPostsResponse: successResult,
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
      // listening socket io events
      SocketIoServices.listenFetchNewNotificationEvent(() {
        print('Increase badge number at notification icon');
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
      String postId = state.getPostsResponse!.posts![event.postIndex].id!;
      Either<ApiFailure, LikeDislikeResponseModel> result =
          await APIServices.likeOrDislike(postId: postId);

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (successResult) {
        if (successResult.notification != null) {
          SocketIoServices.likeDislike(successResult.notification!);
        }
      });
    });

    on<_SharePostAsMessage>((event, emit) async {
      Either<ApiFailure, SharePostAsMessageResponseModel> result =
          await APIServices.sharePostAsMessage(
              sharePostAsMessageRequest: SharePostAsMessageRequestModel(
                  checked: [event.friendId!], postId: event.postId));

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (successResult) {
        emit(state.copyWith(showMessage: 'Post Sent Successfully'));

        emit(state.copyWith(showMessage: null));
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

    on<_ResetIsEmptySharePostDescription>((event, emit) {
      emit(state.copyWith(isSharePostDescriptionEmpty: null));
    });
  }
}
