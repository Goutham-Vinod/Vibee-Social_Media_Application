import 'package:json_annotation/json_annotation.dart';

import 'notification.dart';

part 'like_dislike_response_model.g.dart';

@JsonSerializable()
class LikeDislikeResponseModel {
  bool? success;
  int? amount;
  Notification? notification;

  LikeDislikeResponseModel({this.success, this.amount, this.notification});

  factory LikeDislikeResponseModel.fromJson(Map<String, dynamic> json) {
    return _$LikeDislikeResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LikeDislikeResponseModelToJson(this);
}
