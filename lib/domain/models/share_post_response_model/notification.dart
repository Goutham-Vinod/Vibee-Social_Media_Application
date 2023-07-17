import 'package:json_annotation/json_annotation.dart';

import 'post_id.dart';
import 'user_id.dart';

part 'notification.g.dart';

@JsonSerializable()
class SharePostResponseNotificationModel {
  String? type;
  String? interaction;
  PostId? postId;
  UserId? userId;
  List<dynamic>? readBy;
  @JsonKey(name: '_id')
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  SharePostResponseNotificationModel({
    this.type,
    this.interaction,
    this.postId,
    this.userId,
    this.readBy,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory SharePostResponseNotificationModel.fromJson(
      Map<String, dynamic> json) {
    return _$SharePostResponseNotificationModelFromJson(json);
  }

  Map<String, dynamic> toJson() =>
      _$SharePostResponseNotificationModelToJson(this);
}
