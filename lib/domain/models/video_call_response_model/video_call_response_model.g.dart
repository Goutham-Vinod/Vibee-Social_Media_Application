// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'video_call_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VideoCallResponseModel _$VideoCallResponseModelFromJson(
        Map<String, dynamic> json) =>
    VideoCallResponseModel(
      from: json['from'] == null
          ? null
          : From.fromJson(json['from'] as Map<String, dynamic>),
      to: json['to'] == null
          ? null
          : To.fromJson(json['to'] as Map<String, dynamic>),
      isVideoCall: json['isVideoCall'] as bool?,
      conversationId: json['conversationId'] as String?,
      isLive: json['isLive'] as bool?,
      id: json['_id'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$VideoCallResponseModelToJson(
        VideoCallResponseModel instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'isVideoCall': instance.isVideoCall,
      'conversationId': instance.conversationId,
      'isLive': instance.isLive,
      '_id': instance.id,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
