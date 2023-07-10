// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_group_conversation_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateGroupConversationRequestModel
    _$CreateGroupConversationRequestModelFromJson(Map<String, dynamic> json) =>
        CreateGroupConversationRequestModel(
          members: (json['members'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList(),
          isGroupChat: json['isGroupChat'] as bool?,
          chatName: json['chatName'] as String?,
        );

Map<String, dynamic> _$CreateGroupConversationRequestModelToJson(
        CreateGroupConversationRequestModel instance) =>
    <String, dynamic>{
      'members': instance.members,
      'isGroupChat': instance.isGroupChat,
      'chatName': instance.chatName,
    };
