part of 'home_page_bloc.dart';

@freezed
class HomePageState with _$HomePageState {
  const factory HomePageState.initial({
    required bool isLoading,
    String? errorMessage,
    GetPostsResponseModel? getPostsResponse,
    required List<int> likedPostIndexList,
    List<GetAllConversationsResponseModel>? getAllConversationsResponseList,
    String? showMessage,
    bool? isSharePostDescriptionEmpty,
  }) = _Initial;
}
