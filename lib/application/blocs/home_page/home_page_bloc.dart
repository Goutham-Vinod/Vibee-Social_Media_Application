import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/get_posts_response_model/get_posts_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';
part 'home_page_bloc.freezed.dart';

class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc()
      : super(const _Initial(
          isLoading: true,
          errorMessage: '',
          getPostsResponse: null,
        )) {
    on<InitializeHomePage>((event, emit) async {
      Either<ApiFailure, GetPostsResponseModel> result =
          await APIServices.getPostResponse();
      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (successResult) {
        emit(
          state.copyWith(isLoading: false, getPostsResponse: successResult),
        );
      });
    });
  }
}
