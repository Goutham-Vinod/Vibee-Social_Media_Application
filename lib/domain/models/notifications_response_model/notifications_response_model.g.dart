// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'notifications_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NotificationsResponseModel _$NotificationsResponseModelFromJson(
        Map<String, dynamic> json) =>
    NotificationsResponseModel(
      notifications: (json['notifications'] as List<dynamic>?)
          ?.map((e) => NotificationsResponseModelNotification.fromJson(
              e as Map<String, dynamic>))
          .toList(),
      totalCount: json['totalCount'] as int?,
      readByCount: json['readByCount'] as int?,
    );

Map<String, dynamic> _$NotificationsResponseModelToJson(
        NotificationsResponseModel instance) =>
    <String, dynamic>{
      'notifications': instance.notifications,
      'totalCount': instance.totalCount,
      'readByCount': instance.readByCount,
    };
