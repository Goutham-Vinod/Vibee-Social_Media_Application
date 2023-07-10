import 'package:json_annotation/json_annotation.dart';

import 'post.dart';

part 'get_posts_response_model.g.dart';

@JsonSerializable()
class GetPostsResponseModel {
  List<Post>? posts;
  int? totalCount;

  GetPostsResponseModel({this.posts, this.totalCount});

  factory GetPostsResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetPostsResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetPostsResponseModelToJson(this);
}
