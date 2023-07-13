import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/application/blocs/home_page/home_page_bloc.dart';
import 'package:vibee/application/blocs/home_screen/home_screen_bloc.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/add_comments_request_model/add_comments_request_model.dart';
import 'package:vibee/domain/models/load_comments_response_model/load_comments_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';
import 'package:vibee/presentation/screens/home_screen/home_screen.dart';

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
      Either<ApiFailure, List<LoadCommentsResponseModel>> result =
          await APIServices.loadComments(postId: event.postId);

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
      Either<ApiFailure, bool> result =
          await APIServices.likeOrDislike(postId: postId);

      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (success) {});
    });
  }
}
