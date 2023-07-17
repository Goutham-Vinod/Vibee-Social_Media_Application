// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'like_dislike_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

LikeDislikeResponseModel _$LikeDislikeResponseModelFromJson(
        Map<String, dynamic> json) =>
    LikeDislikeResponseModel(
      success: json['success'] as bool?,
      amount: json['amount'] as int?,
      notification: json['notification'] == null
          ? null
          : LikeDislikeResponseNotificationModel.fromJson(
              json['notification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$LikeDislikeResponseModelToJson(
        LikeDislikeResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'amount': instance.amount,
      'notification': instance.notification,
    };
