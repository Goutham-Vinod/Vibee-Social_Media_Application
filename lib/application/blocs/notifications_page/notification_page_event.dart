part of 'notification_page_bloc.dart';

@freezed
class NotificationPageEvent with _$NotificationPageEvent {
  const factory NotificationPageEvent.started() = _Started;
  const factory NotificationPageEvent.initializeNotificationPage() =
      InitializeNotificationPage;
}
