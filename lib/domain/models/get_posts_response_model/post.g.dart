// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Post _$PostFromJson(Map<String, dynamic> json) => Post(
      id: json['_id'] as String?,
      description: json['description'] as String?,
      shared: json['shared'] as bool?,
      postId: json['postId'] == null
          ? null
          : PostId.fromJson(json['postId'] as Map<String, dynamic>),
      isDeleted: json['isDeleted'] as bool?,
      likes: json['likes'] as List<dynamic>?,
      reported: json['reported'] as List<dynamic>?,
      privacy: json['privacy'] as String?,
      comments: json['comments'] as List<dynamic>?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
      createdBy: json['createdBy'] == null
          ? null
          : CreatedBy.fromJson(json['createdBy'] as Map<String, dynamic>),
      location: json['location'] as String?,
      media: json['media'] as String?,
      mimeType: json['mimeType'] as String?,
    );

Map<String, dynamic> _$PostToJson(Post instance) => <String, dynamic>{
      '_id': instance.id,
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
      'createdBy': instance.createdBy,
      'location': instance.location,
      'media': instance.media,
      'mimeType': instance.mimeType,
    };
