// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_post_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreatePostResponseModel _$CreatePostResponseModelFromJson(
        Map<String, dynamic> json) =>
    CreatePostResponseModel(
      success: json['success'] as bool?,
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      notification: json['notification'] == null
          ? null
          : CreatePostResponseNotificationModel.fromJson(
              json['notification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$CreatePostResponseModelToJson(
        CreatePostResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'post': instance.post,
      'notification': instance.notification,
    };
