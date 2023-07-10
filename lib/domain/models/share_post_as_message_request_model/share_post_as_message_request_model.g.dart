// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_post_as_message_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SharePostAsMessageRequestModel _$SharePostAsMessageRequestModelFromJson(
        Map<String, dynamic> json) =>
    SharePostAsMessageRequestModel(
      checked:
          (json['checked'] as List<dynamic>?)?.map((e) => e as String).toList(),
      postId: json['postId'] as String?,
    );

Map<String, dynamic> _$SharePostAsMessageRequestModelToJson(
        SharePostAsMessageRequestModel instance) =>
    <String, dynamic>{
      'checked': instance.checked,
      'postId': instance.postId,
    };
