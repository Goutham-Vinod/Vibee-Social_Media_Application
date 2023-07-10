// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_conversation_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateGroupConversationResponseModel
    _$CreateGroupConversationResponseModelFromJson(Map<String, dynamic> json) =>
        CreateGroupConversationResponseModel(
          chatName: json['chatName'] as String?,
          isGroupChat: json['isGroupChat'] as bool?,
          groupAdmin: json['groupAdmin'] as String?,
          isDeleted: json['isDeleted'] as bool?,
          users: (json['users'] as List<dynamic>?)
              ?.map((e) => User.fromJson(e as Map<String, dynamic>))
              .toList(),
          id: json['_id'] as String?,
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          v: json['__v'] as int?,
        );

Map<String, dynamic> _$CreateGroupConversationResponseModelToJson(
        CreateGroupConversationResponseModel instance) =>
    <String, dynamic>{
      'chatName': instance.chatName,
      'isGroupChat': instance.isGroupChat,
      'groupAdmin': instance.groupAdmin,
      'isDeleted': instance.isDeleted,
      'users': instance.users,
      '_id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
