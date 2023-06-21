part of 'search_page_bloc.dart';

@freezed
class SearchPageEvent with _$SearchPageEvent {
  const factory SearchPageEvent.search({
    required String searchKey,
    bool? isIncludeOnlyFriendsOfFreinds,
  }) = Search;
}
