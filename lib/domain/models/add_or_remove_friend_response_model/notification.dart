import 'package:json_annotation/json_annotation.dart';

import 'user_id.dart';

part 'notification.g.dart';

@JsonSerializable()
class AddOrRemoveFriendResponseNotificationModel {
  String? type;
  UserId? userId;
  List<dynamic>? readBy;
  @JsonKey(name: '_id')
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  AddOrRemoveFriendResponseNotificationModel({
    this.type,
    this.userId,
    this.readBy,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory AddOrRemoveFriendResponseNotificationModel.fromJson(
      Map<String, dynamic> json) {
    return _$AddOrRemoveFriendResponseNotificationModelFromJson(json);
  }

  Map<String, dynamic> toJson() =>
      _$AddOrRemoveFriendResponseNotificationModelToJson(this);
}
