import 'package:json_annotation/json_annotation.dart';

import 'user_id.dart';

part 'load_comments_response_model.g.dart';

@JsonSerializable()
class LoadCommentsResponseModel {
  UserId? userId;
  String? text;
  bool? isDeleted;
  @JsonKey(name: '_id')
  String? id;
  List<dynamic>? reply;
  DateTime? createdAt;
  DateTime? updatedAt;

  LoadCommentsResponseModel({
    this.userId,
    this.text,
    this.isDeleted,
    this.id,
    this.reply,
    this.createdAt,
    this.updatedAt,
  });

  factory LoadCommentsResponseModel.fromJson(Map<String, dynamic> json) {
    return _$LoadCommentsResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoadCommentsResponseModelToJson(this);
}
