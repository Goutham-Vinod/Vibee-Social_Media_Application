import 'package:json_annotation/json_annotation.dart';

import 'comment.dart';
import 'notification.dart';

part 'add_comments_response_model.g.dart';

@JsonSerializable()
class AddCommentsResponseModel {
  Comment? comment;
  @JsonKey(name: 'notification')
  AddCommentsResponseNotificationModel? notification;

  AddCommentsResponseModel({this.comment, this.notification});

  factory AddCommentsResponseModel.fromJson(Map<String, dynamic> json) {
    return _$AddCommentsResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddCommentsResponseModelToJson(this);
}
