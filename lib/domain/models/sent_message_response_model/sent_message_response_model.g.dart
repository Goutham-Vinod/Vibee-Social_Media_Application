// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sent_message_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SentMessageResponseModel _$SentMessageResponseModelFromJson(
        Map<String, dynamic> json) =>
    SentMessageResponseModel(
      sender: json['sender'] == null
          ? null
          : Sender.fromJson(json['sender'] as Map<String, dynamic>),
      content: json['content'] as String?,
      conversation: json['conversation'] as String?,
      readBy: json['readBy'] as List<dynamic>?,
      isLink: json['isLink'] as bool?,
      id: json['_id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$SentMessageResponseModelToJson(
        SentMessageResponseModel instance) =>
    <String, dynamic>{
      'sender': instance.sender,
      'content': instance.content,
      'conversation': instance.conversation,
      'readBy': instance.readBy,
      'isLink': instance.isLink,
      '_id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
