// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_or_remove_friend_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AddOrRemoveFriendResponseModel _$AddOrRemoveFriendResponseModelFromJson(
        Map<String, dynamic> json) =>
    AddOrRemoveFriendResponseModel(
      success: json['success'] as bool?,
      message: json['message'] as String?,
      notification: json['notification'] == null
          ? null
          : AddOrRemoveFriendResponseNotificationModel.fromJson(
              json['notification'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AddOrRemoveFriendResponseModelToJson(
        AddOrRemoveFriendResponseModel instance) =>
    <String, dynamic>{
      'success': instance.success,
      'message': instance.message,
      'notification': instance.notification,
    };
