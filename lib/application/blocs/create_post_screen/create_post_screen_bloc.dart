import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/create_post_response_model/create_post_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';
import 'package:vibee/infrastructure/camera_repository.dart';
import 'package:vibee/infrastructure/file_repository.dart';

part 'create_post_screen_event.dart';
part 'create_post_screen_state.dart';
part 'create_post_screen_bloc.freezed.dart';

class CreatePostScreenBloc
    extends Bloc<CreatePostScreenEvent, CreatePostScreenState> {
  CreatePostScreenBloc()
      : super(const _CurrentState(
          isScreenLoading: false,
          isFrontendValidationSuccess: false,
          isUploadInProgress: false,
          isUploadPostSuccess: false,
          isImageLoading: false,
        )) {
    on<CreatePost>((event, emit) async {
      emit(state.copyWith(isUploadInProgress: true));
      if (event.description == null ||
          event.privacy == null ||
          event.description!.isEmpty ||
          event.privacy!.isEmpty) {
        emit(state.copyWith(
          errorMessage: 'Please add description and privacy',
          isUploadInProgress: false,
        ));
      } else {
        // validation success

        Either<ApiFailure, CreatePostResponseModel> result =
            await APIServices.createPost(
          description: event.description!,
          privacy: event.privacy!,
          location: event.location,
          post: state.postImage,
        );

        result.fold((failure) {
          print('error ${failure.errorMessage}');
          emit(state.copyWith(
            errorMessage: failure.errorMessage,
            isUploadInProgress: false,
          ));
          emit(state.copyWith(errorMessage: null));
        }, (success) {
          print('success $success');
          emit(state.copyWith(
            isUploadPostSuccess: true,
            isUploadInProgress: false,
          ));
          emit(state.copyWith(isUploadPostSuccess: false));
        });
      }
    });

    on<pickImageFromCamera>((event, emit) async {
      File? image = await CameraRepository.getImageFromCamera();
      emit(state.copyWith(postImage: image));
    });
    on<pickImageFromStorage>((event, emit) async {
      File? image = await FileRepository.getImage();
      emit(state.copyWith(postImage: image));
    });
  }
}
