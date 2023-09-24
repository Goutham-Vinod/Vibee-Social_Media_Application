part of 'search_page_bloc.dart';

@freezed
class SearchPageState with _$SearchPageState {
  const factory SearchPageState._initial(
      {
        
        required bool isSearchLoading,
      
      SearchUserResponseModel? searchResultResponse, 
      String? errorMessage,
      }) = _Initial;
}
