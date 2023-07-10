// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_conversations_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllConversationsResponseModel _$GetAllConversationsResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetAllConversationsResponseModel(
      id: json['_id'] as String?,
      chatName: json['chatName'] as String?,
      isGroupChat: json['isGroupChat'] as bool?,
      groupAdmin: json['groupAdmin'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      users: (json['users'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
      message: json['message'] as String?,
      sender: json['sender'] == null
          ? null
          : Sender.fromJson(json['sender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GetAllConversationsResponseModelToJson(
        GetAllConversationsResponseModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'chatName': instance.chatName,
      'isGroupChat': instance.isGroupChat,
      'groupAdmin': instance.groupAdmin,
      'isDeleted': instance.isDeleted,
      'users': instance.users,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'message': instance.message,
      'sender': instance.sender,
    };
