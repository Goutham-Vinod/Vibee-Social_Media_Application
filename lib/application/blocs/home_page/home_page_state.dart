part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.initial({
    required bool isLoading,
    String? errorMessage,
    GetPostsResponseModel? getPostsResponse,
  }) = _Initial;
}
