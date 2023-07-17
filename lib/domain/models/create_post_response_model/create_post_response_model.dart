import 'package:json_annotation/json_annotation.dart';

import 'notification.dart';
import 'post.dart';

part 'create_post_response_model.g.dart';

@JsonSerializable()
class CreatePostResponseModel {
  bool? success;
  Post? post;
  CreatePostResponseNotificationModel? notification;

  CreatePostResponseModel({this.success, this.post, this.notification});

  factory CreatePostResponseModel.fromJson(Map<String, dynamic> json) {
    return _$CreatePostResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CreatePostResponseModelToJson(this);
}
