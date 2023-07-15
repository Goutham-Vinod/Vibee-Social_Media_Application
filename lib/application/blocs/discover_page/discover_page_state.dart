part of 'discover_page_bloc.dart';

@freezed
class DiscoverPageState with _$DiscoverPageState {
  const factory DiscoverPageState.currentState({
    required bool isScreenLoading,
    String? errorMessage,
    DiscoverResponseModel? discoverResponse,
    required List<int> likedPostIndexList,
    List<GetAllConversationsResponseModel>? getAllConversationsResponseList,
    bool? isSharePostDescriptionEmpty,
    String? showMessage,
  }) = _CurrentState;
}
