import 'package:json_annotation/json_annotation.dart';

import 'notification.dart';

part 'notifications_response_model.g.dart';

@JsonSerializable()
class NotificationsResponseModel {
  List<NotificationsResponseModelNotification>? notifications;
  int? totalCount;
  int? readByCount;

  NotificationsResponseModel({
    this.notifications,
    this.totalCount,
    this.readByCount,
  });

  factory NotificationsResponseModel.fromJson(Map<String, dynamic> json) {
    return _$NotificationsResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NotificationsResponseModelToJson(this);
}
