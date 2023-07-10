import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/domain/models/friends_list_response_model/friends_list_response_model.dart';

part 'create_group_screen_1_event.dart';
part 'create_group_screen_1_state.dart';
part 'create_group_screen_1_bloc.freezed.dart';

class CreateGroupScreen_1Bloc
    extends Bloc<CreateGroupScreen_1Event, CreateGroupScreen_1State> {
  CreateGroupScreen_1Bloc()
      : super(const _CurrentState(isScreenLoading: true)) {
    on<CreateGroupScreen_1Event>((event, emit) {
      // TODO: implement event handler
    });
  }
}
