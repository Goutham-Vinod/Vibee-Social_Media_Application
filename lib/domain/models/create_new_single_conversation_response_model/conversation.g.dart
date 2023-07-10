// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conversation.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Conversation _$ConversationFromJson(Map<String, dynamic> json) => Conversation(
      id: json['_id'] as String?,
      isGroupChat: json['isGroupChat'] as bool?,
      isDeleted: json['isDeleted'] as bool?,
      users:
          (json['users'] as List<dynamic>?)?.map((e) => e as String).toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
      latestMessage: json['latestMessage'] == null
          ? null
          : LatestMessage.fromJson(
              json['latestMessage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$ConversationToJson(Conversation instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'isGroupChat': instance.isGroupChat,
      'isDeleted': instance.isDeleted,
      'users': instance.users,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'latestMessage': instance.latestMessage,
    };
