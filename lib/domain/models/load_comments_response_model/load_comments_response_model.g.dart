// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'load_comments_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LoadCommentsResponseModel _$LoadCommentsResponseModelFromJson(
        Map<String, dynamic> json) =>
    LoadCommentsResponseModel(
      userId: json['userId'] == null
          ? null
          : UserId.fromJson(json['userId'] as Map<String, dynamic>),
      text: json['text'] as String?,
      isDeleted: json['isDeleted'] as bool?,
      id: json['_id'] as String?,
      reply: json['reply'] as List<dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$LoadCommentsResponseModelToJson(
        LoadCommentsResponseModel instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'text': instance.text,
      'isDeleted': instance.isDeleted,
      '_id': instance.id,
      'reply': instance.reply,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
    };
