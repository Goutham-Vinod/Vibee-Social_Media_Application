import 'package:json_annotation/json_annotation.dart';

part 'share_post_as_message_request_model.g.dart';

@JsonSerializable()
class SharePostAsMessageRequestModel {
  List<String>? checked;
  String? postId;

  SharePostAsMessageRequestModel({this.checked, this.postId});

  factory SharePostAsMessageRequestModel.fromJson(Map<String, dynamic> json) {
    return _$SharePostAsMessageRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SharePostAsMessageRequestModelToJson(this);
  }
}
