import 'package:json_annotation/json_annotation.dart';

import 'notification.dart';
import 'post.dart';

part 'share_post_response_model.g.dart';

@JsonSerializable()
class SharePostResponseModel {
  Post? post;
  SharePostResponseNotificationModel? notification;

  SharePostResponseModel({this.post, this.notification});

  factory SharePostResponseModel.fromJson(Map<String, dynamic> json) {
    return _$SharePostResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SharePostResponseModelToJson(this);
}
