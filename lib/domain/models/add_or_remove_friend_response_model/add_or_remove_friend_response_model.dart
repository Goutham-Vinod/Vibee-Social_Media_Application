import 'package:json_annotation/json_annotation.dart';

import 'notification.dart';

part 'add_or_remove_friend_response_model.g.dart';

@JsonSerializable()
class AddOrRemoveFriendResponseModel {
  bool? success;
  String? message;
  AddOrRemoveFriendResponseNotificationModel? notification;

  AddOrRemoveFriendResponseModel({
    this.success,
    this.message,
    this.notification,
  });

  factory AddOrRemoveFriendResponseModel.fromJson(Map<String, dynamic> json) {
    return _$AddOrRemoveFriendResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$AddOrRemoveFriendResponseModelToJson(this);
  }
}
