// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_post_by_one_user_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPostByOneUserResponseModel _$GetPostByOneUserResponseModelFromJson(
        Map<String, dynamic> json) =>
    GetPostByOneUserResponseModel(
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetPostByOneUserResponseModelToJson(
        GetPostByOneUserResponseModel instance) =>
    <String, dynamic>{
      'posts': instance.posts,
    };
