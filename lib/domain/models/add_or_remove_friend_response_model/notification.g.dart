// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notification.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOrRemoveFriendResponseNotificationModel
    _$AddOrRemoveFriendResponseNotificationModelFromJson(
            Map<String, dynamic> json) =>
        AddOrRemoveFriendResponseNotificationModel(
          type: json['type'] as String?,
          userId: json['userId'] == null
              ? null
              : UserId.fromJson(json['userId'] as Map<String, dynamic>),
          readBy: json['readBy'] as List<dynamic>?,
          id: json['_id'] as String?,
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          v: json['__v'] as int?,
        );

Map<String, dynamic> _$AddOrRemoveFriendResponseNotificationModelToJson(
        AddOrRemoveFriendResponseNotificationModel instance) =>
    <String, dynamic>{
      'type': instance.type,
      'userId': instance.userId,
      'readBy': instance.readBy,
      '_id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
