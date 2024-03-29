import 'package:json_annotation/json_annotation.dart';

import 'user_id.dart';

part 'notification.g.dart';

@JsonSerializable()
class CreatePostResponseNotificationModel {
  String? type;
  String? postId;
  UserId? userId;
  List<dynamic>? readBy;
  @JsonKey(name: '_id')
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  CreatePostResponseNotificationModel({
    this.type,
    this.postId,
    this.userId,
    this.readBy,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory CreatePostResponseNotificationModel.fromJson(
      Map<String, dynamic> json) {
    return _$CreatePostResponseNotificationModelFromJson(json);
  }

  Map<String, dynamic> toJson() =>
      _$CreatePostResponseNotificationModelToJson(this);
}
