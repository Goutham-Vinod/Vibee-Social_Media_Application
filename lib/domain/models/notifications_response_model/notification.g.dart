// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationsResponseModelNotification
    _$NotificationsResponseModelNotificationFromJson(
            Map<String, dynamic> json) =>
        NotificationsResponseModelNotification(
          id: json['_id'] as String?,
          type: json['type'] as String?,
          userId: json['userId'] == null
              ? null
              : UserId.fromJson(json['userId'] as Map<String, dynamic>),
          to: json['to'] == null
              ? null
              : To.fromJson(json['to'] as Map<String, dynamic>),
          readBy: json['readBy'] as List<dynamic>?,
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          v: json['__v'] as int?,
          postId: json['postId'] == null
              ? null
              : PostId.fromJson(json['postId'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$NotificationsResponseModelNotificationToJson(
        NotificationsResponseModelNotification instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'type': instance.type,
      'userId': instance.userId,
      'to': instance.to,
      'readBy': instance.readBy,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'postId': instance.postId,
    };
