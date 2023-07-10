import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/get_saved_posts_response_model/get_saved_posts_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';

part 'saved_posts_screen_event.dart';
part 'saved_posts_screen_state.dart';
part 'saved_posts_screen_bloc.freezed.dart';

class SavedPostsScreenBloc
    extends Bloc<SavedPostsScreenEvent, SavedPostsScreenState> {
  SavedPostsScreenBloc()
      : super(const _CurrentState(
          isImageLoading: false,
          isScreenLoading: true,
          errorMessage: null,
          getSavedPostsResponse: null,
        )) {
    on<_InitializePage>((event, emit) async {
      Either<ApiFailure,List< GetSavedPostsResponseModel> >result =
          await APIServices.getSavedPostts();
      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (successResult) {
        emit(state.copyWith(
            isScreenLoading: false, getSavedPostsResponse: successResult));
      });
    });
  }
}
