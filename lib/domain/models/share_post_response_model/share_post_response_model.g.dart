// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_post_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SharePostResponseModel _$SharePostResponseModelFromJson(
        Map<String, dynamic> json) =>
    SharePostResponseModel(
      post: json['post'] == null
          ? null
          : Post.fromJson(json['post'] as Map<String, dynamic>),
      notification: json['notification'] == null
          ? null
          : SharePostResponseNotificationModel.fromJson(
              json['notification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SharePostResponseModelToJson(
        SharePostResponseModel instance) =>
    <String, dynamic>{
      'post': instance.post,
      'notification': instance.notification,
    };
