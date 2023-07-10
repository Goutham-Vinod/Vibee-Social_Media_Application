import 'package:json_annotation/json_annotation.dart';

part 'add_comments_request_model.g.dart';

@JsonSerializable()
class AddCommentsRequestModel {
  String? postId;
  String? comment;

  AddCommentsRequestModel({this.postId, this.comment});

  factory AddCommentsRequestModel.fromJson(Map<String, dynamic> json) {
    return _$AddCommentsRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$AddCommentsRequestModelToJson(this);
}
