// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_post_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SharePostRequestModel _$SharePostRequestModelFromJson(
        Map<String, dynamic> json) =>
    SharePostRequestModel(
      privacy: json['privacy'] as String?,
      description: json['description'] as String?,
      shared: json['shared'] as bool?,
      sharedPostId: json['sharedPostId'] as String?,
    );

Map<String, dynamic> _$SharePostRequestModelToJson(
        SharePostRequestModel instance) =>
    <String, dynamic>{
      'privacy': instance.privacy,
      'description': instance.description,
      'shared': instance.shared,
      'sharedPostId': instance.sharedPostId,
    };
