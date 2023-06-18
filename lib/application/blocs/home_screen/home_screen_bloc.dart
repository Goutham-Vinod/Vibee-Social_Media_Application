import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_screen_event.dart';
part 'home_screen_state.dart';
part 'home_screen_bloc.freezed.dart';

class HomeScreenBloc extends Bloc<ChangeBottomNavBarIndex, HomeScreenState> {
  HomeScreenBloc() : super(HomeScreenState.initial()) {
    on<ChangeBottomNavBarIndex>((event, emit) {
      emit(state.copyWith(
        currentNavBarIndex: event.selectedBottomNavBarIndex,
      ));
    });
  }
}
