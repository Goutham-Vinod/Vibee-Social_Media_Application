// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_details_of_single_post_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetDetailsOfSinglePostResponseModel
    _$GetDetailsOfSinglePostResponseModelFromJson(Map<String, dynamic> json) =>
        GetDetailsOfSinglePostResponseModel(
          id: json['_id'] as String?,
          createdBy: json['createdBy'] as String?,
          description: json['description'] as String?,
          shared: json['shared'] as bool?,
          postId: json['postId'] as String?,
          isDeleted: json['isDeleted'] as bool?,
          likes: json['likes'] as List<dynamic>?,
          reported: json['reported'] as List<dynamic>?,
          privacy: json['privacy'] as String?,
          comments: (json['comments'] as List<dynamic>?)
              ?.map((e) => Comment.fromJson(e as Map<String, dynamic>))
              .toList(),
          createdAt: json['createdAt'] == null
              ? null
              : DateTime.parse(json['createdAt'] as String),
          updatedAt: json['updatedAt'] == null
              ? null
              : DateTime.parse(json['updatedAt'] as String),
          v: json['__v'] as int?,
        );

Map<String, dynamic> _$GetDetailsOfSinglePostResponseModelToJson(
        GetDetailsOfSinglePostResponseModel instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'createdBy': instance.createdBy,
      'description': instance.description,
      'shared': instance.shared,
      'postId': instance.postId,
      'isDeleted': instance.isDeleted,
      'likes': instance.likes,
      'reported': instance.reported,
      'privacy': instance.privacy,
      'comments': instance.comments,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
