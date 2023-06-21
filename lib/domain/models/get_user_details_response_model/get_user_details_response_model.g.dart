// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_user_details_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetUserDetailsResponseModel _$GetUserDetailsResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetUserDetailsResponseModel(
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      loggedinUser: json['loggedinUser'] == null
          ? null
          : LoggedinUser.fromJson(json['loggedinUser'] as Map<String, dynamic>),
      friend: json['friend'] as bool?,
      pending: json['pending'] as bool?,
      requestReceived: json['requestReceived'] as bool?,
    );

Map<String, dynamic> _$GetUserDetailsResponseModelToJson(
        GetUserDetailsResponseModel instance) =>
    <String, dynamic>{
      'user': instance.user,
      'loggedinUser': instance.loggedinUser,
      'friend': instance.friend,
      'pending': instance.pending,
      'requestReceived': instance.requestReceived,
    };
