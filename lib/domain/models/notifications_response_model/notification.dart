import 'package:json_annotation/json_annotation.dart';

import 'post_id.dart';
import 'to.dart';
import 'user_id.dart';

part 'notification.g.dart';

@JsonSerializable()
class Notification {
  @JsonKey(name: '_id')
  String? id;
  String? type;
  UserId? userId;
  To? to;
  List<dynamic>? readBy;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;
  PostId? postId;

  Notification({
    this.id,
    this.type,
    this.userId,
    this.to,
    this.readBy,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.postId,
  });

  factory Notification.fromJson(Map<String, dynamic> json) {
    return _$NotificationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$NotificationToJson(this);
}
