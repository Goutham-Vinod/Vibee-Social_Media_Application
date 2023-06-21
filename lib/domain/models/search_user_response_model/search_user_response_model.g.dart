// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchUserResponseModel _$SearchUserResponseModelFromJson(
        Map<String, dynamic> json) =>
    SearchUserResponseModel(
      result: (json['result'] as List<dynamic>?)
          ?.map((e) => Result.fromJson(e as Map<String, dynamic>))
          .toList(),
      count: (json['count'] as List<dynamic>?)
          ?.map((e) => Count.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SearchUserResponseModelToJson(
        SearchUserResponseModel instance) =>
    <String, dynamic>{
      'result': instance.result,
      'count': instance.count,
    };
