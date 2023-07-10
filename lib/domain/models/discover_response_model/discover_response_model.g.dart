// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'discover_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DiscoverResponseModel _$DiscoverResponseModelFromJson(
        Map<String, dynamic> json) =>
    DiscoverResponseModel(
      posts: (json['posts'] as List<dynamic>?)
          ?.map((e) => Post.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['totalCount'] as int?,
    );

Map<String, dynamic> _$DiscoverResponseModelToJson(
        DiscoverResponseModel instance) =>
    <String, dynamic>{
      'posts': instance.posts,
      'totalCount': instance.totalCount,
    };
