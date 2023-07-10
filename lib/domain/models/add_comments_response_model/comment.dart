import 'package:json_annotation/json_annotation.dart';

import 'user_id.dart';

part 'comment.g.dart';

@JsonSerializable()
class Comment {
  UserId? userId;
  String? text;
  bool? isDeleted;
  @JsonKey(name: '_id')
  String? id;
  List<dynamic>? reply;
  DateTime? createdAt;
  DateTime? updatedAt;

  Comment({
    this.userId,
    this.text,
    this.isDeleted,
    this.id,
    this.reply,
    this.createdAt,
    this.updatedAt,
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return _$CommentFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CommentToJson(this);
}
