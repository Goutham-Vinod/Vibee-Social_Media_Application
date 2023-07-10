import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/add_comments_request_model/add_comments_request_model.dart';
import 'package:vibee/domain/models/get_details_of_single_post_response_model/get_details_of_single_post_response_model.dart';
import 'package:vibee/domain/models/load_comments_response_model/load_comments_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';

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
        emit(state.copyWith(loadCommentsResponse: successResult));
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
        add(CommentsScreenEvent.initalizeCommentsScreen(postId: state.postId!));
      });
    });
  }
}
