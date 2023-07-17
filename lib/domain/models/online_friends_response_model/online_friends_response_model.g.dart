// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'online_friends_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OnlineFriendsResponseModel _$OnlineFriendsResponseModelFromJson(
        Map<String, dynamic> json) =>
    OnlineFriendsResponseModel(
      id: json['_id'] as String?,
      userId: json['userId'] == null
          ? null
          : UserId.fromJson(json['userId'] as Map<String, dynamic>),
      socketId: json['socketId'] as String?,
    );

Map<String, dynamic> _$OnlineFriendsResponseModelToJson(
        OnlineFriendsResponseModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'userId': instance.userId,
      'socketId': instance.socketId,
    };
