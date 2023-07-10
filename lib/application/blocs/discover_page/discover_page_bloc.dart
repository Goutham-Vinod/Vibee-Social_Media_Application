import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/discover_response_model/discover_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';

part 'discover_page_event.dart';
part 'discover_page_state.dart';
part 'discover_page_bloc.freezed.dart';

class DiscoverPageBloc extends Bloc<DiscoverPageEvent, DiscoverPageState> {
  DiscoverPageBloc()
      : super(const _CurrentState(
          isScreenLoading: true,
          errorMessage: null,
          discoverResponse: null,
        )) {
    on<InitializeDiscoverPage>((event, emit) async {
      Either<ApiFailure, DiscoverResponseModel> result =
          await APIServices.discoverPosts();
      result.fold((failure) {
        emit(state.copyWith(errorMessage: failure.errorMessage));
        emit(state.copyWith(errorMessage: null));
      }, (successResponse) {
        emit(state.copyWith(discoverResponse: successResponse));
      });
    });
  }
}
