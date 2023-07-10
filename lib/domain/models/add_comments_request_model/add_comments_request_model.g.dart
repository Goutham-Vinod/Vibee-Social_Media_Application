// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_comments_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCommentsRequestModel _$AddCommentsRequestModelFromJson(
        Map<String, dynamic> json) =>
    AddCommentsRequestModel(
      postId: json['postId'] as String?,
      comment: json['comment'] as String?,
    );

Map<String, dynamic> _$AddCommentsRequestModelToJson(
        AddCommentsRequestModel instance) =>
    <String, dynamic>{
      'postId': instance.postId,
      'comment': instance.comment,
    };
