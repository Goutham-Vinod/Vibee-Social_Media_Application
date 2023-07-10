part of 'discover_page_bloc.dart';

@freezed
class DiscoverPageState with _$DiscoverPageState {
  const factory DiscoverPageState.currentState({
    required bool isScreenLoading,
    String? errorMessage,
    DiscoverResponseModel? discoverResponse,
  }) = _CurrentState;
}
