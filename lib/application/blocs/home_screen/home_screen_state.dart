part of 'home_screen_bloc.dart';

@freezed
class HomeScreenState with _$HomeScreenState {
  const factory HomeScreenState({
    required int currentNavBarIndex,
  }) = _HomeScreenState;
  factory HomeScreenState.initial() {
    return const HomeScreenState(currentNavBarIndex: 0);
  }
}
