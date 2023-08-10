// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Notification _$NotificationFromJson(Map<String, dynamic> json) => Notification(
      id: json['_id'] as String?,
      type: json['type'] as String?,
      postId: json['postId'] == null
          ? null
          : PostId.fromJson(json['postId'] as Map<String, dynamic>),
      userId: json['userId'] == null
          ? null
          : UserId.fromJson(json['userId'] as Map<String, dynamic>),
      readBy:
          (json['readBy'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
      to: json['to'] == null
          ? null
          : To.fromJson(json['to'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$NotificationToJson(Notification instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'type': instance.type,
      'postId': instance.postId,
      'userId': instance.userId,
      'readBy': instance.readBy,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'to': instance.to,
    };
