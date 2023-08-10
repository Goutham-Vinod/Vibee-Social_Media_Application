import 'package:json_annotation/json_annotation.dart';

import 'created_by.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  @JsonKey(name: '_id')
  String? id;
  CreatedBy? createdBy;
  String? description;
  String? location;
  String? media;
  bool? shared;
  bool? isDeleted;
  List<dynamic>? likes;
  List<dynamic>? reported;
  String? privacy;
  String? mimeType;
  List<dynamic>? comments;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;
  String? postId;

  Post({
    this.id,
    this.createdBy,
    this.description,
    this.location,
    this.media,
    this.shared,
    this.isDeleted,
    this.likes,
    this.reported,
    this.privacy,
    this.mimeType,
    this.comments,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.postId,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}
