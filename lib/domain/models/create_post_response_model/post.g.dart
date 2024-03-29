// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      createdBy: json['createdBy'] == null
          ? null
          : CreatedBy.fromJson(json['createdBy'] as Map<String, dynamic>),
      description: json['description'] as String?,
      location: json['location'] as String?,
      shared: json['shared'] as bool?,
      isDeleted: json['isDeleted'] as bool?,
      likes: json['likes'] as List<dynamic>?,
      reported: json['reported'] as List<dynamic>?,
      privacy: json['privacy'] as String?,
      id: json['_id'] as String?,
      comments: json['comments'] as List<dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      'createdBy': instance.createdBy,
      'description': instance.description,
      'location': instance.location,
      'shared': instance.shared,
      'isDeleted': instance.isDeleted,
      'likes': instance.likes,
      'reported': instance.reported,
      'privacy': instance.privacy,
      '_id': instance.id,
      'comments': instance.comments,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
    };
