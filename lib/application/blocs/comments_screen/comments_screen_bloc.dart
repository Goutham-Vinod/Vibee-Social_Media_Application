
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/add_comments_request_model/add_comments_request_model.dart';
import 'package:vibee/domain/models/get_all_conversations_response_model/get_all_conversations_response_model.dart';
import 'package:vibee/domain/models/like_dislike_response_model/like_dislike_response_model.dart';
import 'package:vibee/domain/models/load_comments_response_model/load_comments_response_model.dart';
import 'package:vibee/domain/models/share_post_as_message_request_model/share_post_as_message_request_model.dart';
import 'package:vibee/domain/models/share_post_as_message_response_model/share_post_as_message_response_model.dart';
import 'package:vibee/domain/models/share_post_request_model/share_post_request_model.dart';
import 'package:vibee/domain/models/share_post_response_model/share_post_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';
import 'package:vibee/infrastructure/socket_io_services.dart';

part 'comments_screen_event.dart';
part 'comments_screen_state.dart';
part 'comments_screen_bloc.freezed.dart';

class CommentsScreenBloc
    extends Bloc<CommentsScreenEvent, CommentsScreenState> {
  CommentsScreenBloc()
      : super(const _Current(
          isFrontendValidationSuccess: false,
          isImageLoading: false,
          isScreenLoading: true,
          isUploadCommentSuccess: false,
        )) {
    on<_InitializeCommentScreen>((event, emit) async {
// page initialization
      Either<ApiFailure, List<LoadCommentsResponseModel>> result =
          await APIServices.loadComments(postId: event.postId);




      Either<ApiFailure, List<GetAllConversationsResponseModel>>
          getAllConversationsResult = await APIServices.getAllConversations();

      getAllConversationsResult.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        emit(state.copyWith(getAllConversationsResponseList: success));
      });
   




      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (successResult) {
        emit(state.copyWith(
            loadCommentsResponse: successResult,
            postId: event.postId,
            isLiked: event.isLiked));
      });
    });
    on<_SentComment>((event, emit) async {
      Either<ApiFailure, bool> isCommentUploadedResult =
          await APIServices.addComments(
              addCommentsRequest: AddCommentsRequestModel(
                  postId: event.postId, comment: event.comment));

      isCommentUploadedResult.fold((failure) {
        emit(state.copyWith(
            isUploadCommentSuccess: false, errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {
        emit(state.copyWith(isUploadCommentSuccess: true));
        emit(state.copyWith(isUploadCommentSuccess: false));

        add(CommentsScreenEvent.initalizeCommentsScreen(
            postId: state.postId!, isLiked: state.isLiked!));
      });
    });

    on<_LikePost>((event, emit) async {
// initializing likedPostIndexList
      bool? isLiked = state.isLiked;

      

//frontend part below

      if (isLiked == true) {
        emit(state.copyWith(isLiked: false));
      } else {
        emit(state.copyWith(isLiked: true));
      }

// backend part below
      String postId = state.postId!;

      Either<ApiFailure, LikeDislikeResponseModel> result =
          await APIServices.likeOrDislike(postId: postId);

      result.fold((failure) {
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
                  checked: [event.friendId!], postId: event.postId,
                  
                  ));

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
