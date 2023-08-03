// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_message_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetMessageResponseModel _$GetMessageResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetMessageResponseModel(
      id: json['_id'] as String?,
      chatName: json['chatName'] as String?,
      isGroupChat: json['isGroupChat'] as bool?,
      groupAdmin: json['groupAdmin'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      groupChatImage: json['groupChatImage'] as String?,
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
      messages: (json['messages'] as List<dynamic>?)
          ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetMessageResponseModelToJson(
        GetMessageResponseModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'chatName': instance.chatName,
      'isGroupChat': instance.isGroupChat,
      'groupAdmin': instance.groupAdmin,
      'isDeleted': instance.isDeleted,
      'users': instance.users,
      'groupChatImage': instance.groupChatImage,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'latestMessage': instance.latestMessage,
      'messages': instance.messages,
    };
