import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vibee/domain/failures/api_failures.dart';
import 'package:vibee/domain/models/notifications_response_model/notifications_response_model.dart';
import 'package:vibee/infrastructure/api_services.dart';
import 'package:vibee/infrastructure/socket_io_services.dart';

part 'notification_page_event.dart';
part 'notification_page_state.dart';
part 'notification_page_bloc.freezed.dart';

class NotificationPageBloc
    extends Bloc<NotificationPageEvent, NotificationPageState> {
  NotificationPageBloc()
      : super(const _Initial(
          isLoading: true,
          errorMessage: null,
          notificationsResponse: null,
        )) {
    on<InitializeNotificationPage>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      // listening socket io events
      SocketIoServices.listenLatestMessageEvent(() {
        add(const NotificationPageEvent.initializeNotificationPage());
      });

      // page initialization
      Either<ApiFailure, NotificationsResponseModel> result =
          await APIServices.getNotifications();
      result.fold((failure) {
        emit(state.copyWith(
            isLoading: false,
            errorMessage:
                'Oops...Something went wrong.. Please try again later.'));
      }, (successResult) {
        emit(state.copyWith(
          isLoading: false,
          notificationsResponse: successResult,
          errorMessage: null,
        ));
      });
    });
  }
}
