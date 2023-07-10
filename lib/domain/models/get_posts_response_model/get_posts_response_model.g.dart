// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_posts_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPostsResponseModel _$GetPostsResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetPostsResponseModel(
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['totalCount'] as int?,
    );

Map<String, dynamic> _$GetPostsResponseModelToJson(
        GetPostsResponseModel instance) =>
    <String, dynamic>{
      'posts': instance.posts,
      'totalCount': instance.totalCount,
    };
