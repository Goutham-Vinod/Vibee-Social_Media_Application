import 'package:json_annotation/json_annotation.dart';

import 'post.dart';

part 'get_post_by_one_user_response_model.g.dart';

@JsonSerializable()
class GetPostByOneUserResponseModel {
  List<Post>? posts;

  GetPostByOneUserResponseModel({this.posts});

  factory GetPostByOneUserResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetPostByOneUserResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetPostByOneUserResponseModelToJson(this);
}
