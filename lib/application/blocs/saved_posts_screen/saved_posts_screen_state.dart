part of 'saved_posts_screen_bloc.dart';

@freezed
class SavedPostsScreenState with _$SavedPostsScreenState {
  const factory SavedPostsScreenState.currentState({
    required bool isScreenLoading,
    String? errorMessage,
    required bool isImageLoading,
    List<GetSavedPostsResponseModel?>? getSavedPostsResponse,
  }) = _CurrentState;
}
