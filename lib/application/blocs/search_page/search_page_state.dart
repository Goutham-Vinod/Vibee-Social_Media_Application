part of 'search_page_bloc.dart';

@freezed
class SearchPageState with _$SearchPageState {
  const factory SearchPageState._initial(
      {SearchUserResponseModel? searchResultResponse,
      required bool isSearchLoading,
      String? errorMessage,
      bool? isIncludeOnlyFriendsOfFreinds}) = _Initial;
}
