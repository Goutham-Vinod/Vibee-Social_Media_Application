part of 'notification_page_bloc.dart';

@freezed
class NotificationPageState with _$NotificationPageState {
  const factory NotificationPageState.initial({
    required bool isLoading,
    String? errorMessage,
    NotificationsResponseModel? notificationsResponse,
  }) = _Initial;
}
