part of 'home_screen_bloc.dart';

@freezed
class HomeScreenEvent with _$HomeScreenEvent {
  const factory HomeScreenEvent.changeBottomNavBarIndex({
    required int selectedBottomNavBarIndex,
  }) = ChangeBottomNavBarIndex;
}
