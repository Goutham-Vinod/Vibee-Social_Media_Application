import 'package:json_annotation/json_annotation.dart';

import 'post.dart';

part 'discover_response_model.g.dart';

@JsonSerializable()
class DiscoverResponseModel {
  List<Post>? posts;
  int? totalCount;

  DiscoverResponseModel({this.posts, this.totalCount});

  factory DiscoverResponseModel.fromJson(Map<String, dynamic> json) {
    return _$DiscoverResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$DiscoverResponseModelToJson(this);
}
