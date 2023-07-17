// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_comments_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddCommentsResponseModel _$AddCommentsResponseModelFromJson(
        Map<String, dynamic> json) =>
    AddCommentsResponseModel(
      comment: json['comment'] == null
          ? null
          : Comment.fromJson(json['comment'] as Map<String, dynamic>),
      notification: json['notification'] == null
          ? null
          : AddCommentsResponseNotificationModel.fromJson(
              json['notification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddCommentsResponseModelToJson(
        AddCommentsResponseModel instance) =>
    <String, dynamic>{
      'comment': instance.comment,
      'notification': instance.notification,
    };
