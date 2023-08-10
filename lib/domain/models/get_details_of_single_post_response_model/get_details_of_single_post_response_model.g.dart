// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_details_of_single_post_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetDetailsOfSinglePostResponseModel
    _$GetDetailsOfSinglePostResponseModelFromJson(Map<String, dynamic> json) =>
        GetDetailsOfSinglePostResponseModel(
          postId: json['_id'] as String?,
          description: json['description'] as String?,
          location: json['location'] as String?,
          media: json['media'] as String?,
          likes: json['likes'] as List<dynamic>?,
        );

Map<String, dynamic> _$GetDetailsOfSinglePostResponseModelToJson(
        GetDetailsOfSinglePostResponseModel instance) =>
    <String, dynamic>{
      '_id': instance.postId,
      'description': instance.description,
      'location': instance.location,
      'media': instance.media,
      'likes': instance.likes,
    };
