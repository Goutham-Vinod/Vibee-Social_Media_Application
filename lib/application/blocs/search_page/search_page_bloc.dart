
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/search_user_response_model/search_user_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';
part 'search_page_event.dart';
part 'search_page_state.dart';
part 'search_page_bloc.freezed.dart';

class SearchPageBloc extends Bloc<SearchPageEvent, SearchPageState> {
  SearchPageBloc() : super(const _Initial(isSearchLoading: false)) {
    on<Search>((event, emit) async {
      const _Initial(isSearchLoading: true);
      Either<ApiFailure, SearchUserResponseModel> result =
          await APIServices.searchUser(event.searchKey);
      result.fold((failure) {
        emit(state.copyWith(
            isSearchLoading: false,
            errorMessage:
                'Oops...Something went wrong.. Please try again later.'));
      }, (successResult) {
        emit(state.copyWith(
          isSearchLoading: false,
          searchResultResponse: successResult,
          errorMessage: null,
        ));
      });
    });
  }
}
