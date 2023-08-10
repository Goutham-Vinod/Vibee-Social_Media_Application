import 'dart:developer';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
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
      double fileSizeMB = 0;
      if (event.photoOrVideo != null) {
        int fileSizeBytes = event.photoOrVideo!.lengthSync();
        double fileSizeKB = fileSizeBytes / 1024;
        fileSizeMB = fileSizeKB / 1024;
      }

      if (event.description == null ||
          event.privacy == null ||
          event.description!.isEmpty ||
          event.privacy!.isEmpty) {
        emit(state.copyWith(
          errorMessage: 'Please add description and privacy',
          isUploadInProgress: false,
        ));
      } else if (event.description!.length > 40) {
        emit(state.copyWith(
          errorMessage: 'Description should not be too long.',
          isUploadInProgress: false,
        ));
      } else if (event.location!.length > 10) {
        emit(state.copyWith(
          errorMessage: 'Location should not be too long.',
          isUploadInProgress: false,
        ));
      } else if (fileSizeMB > 1) {
        emit(state.copyWith(
            errorMessage: 'Please upload a file size below 1MB'));
        emit(state.copyWith(errorMessage: null));
      } else {
        // validation success

        Either<ApiFailure, CreatePostResponseModel> result =
            await APIServices.createPost(
          description: event.description!,
          privacy: event.privacy!,
          location: event.location,
          post: state.post,
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
      emit(state.copyWith(post: image));
    });
    on<pickImageFromStorage>((event, emit) async {
      File? file = await FileRepository.getFile();
      emit(state.copyWith(post: file));
    });
  }
}
