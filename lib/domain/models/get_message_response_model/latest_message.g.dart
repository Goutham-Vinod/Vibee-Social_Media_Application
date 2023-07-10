// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'latest_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LatestMessage _$LatestMessageFromJson(Map<String, dynamic> json) =>
    LatestMessage(
      message: json['message'] as String?,
      sender: json['sender'] as String?,
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$LatestMessageToJson(LatestMessage instance) =>
    <String, dynamic>{
      'message': instance.message,
      'sender': instance.sender,
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
