import 'package:json_annotation/json_annotation.dart';

part 'share_post_request_model.g.dart';

@JsonSerializable()
class SharePostRequestModel {
  String? privacy;
  String? description;
  bool? shared;
  String? sharedPostId;

  SharePostRequestModel({
    this.privacy,
    this.description,
    this.shared,
    this.sharedPostId,
  });

  factory SharePostRequestModel.fromJson(Map<String, dynamic> json) {
    return _$SharePostRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SharePostRequestModelToJson(this);
}
