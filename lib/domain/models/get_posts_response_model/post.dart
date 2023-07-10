import 'package:json_annotation/json_annotation.dart';

import 'created_by.dart';
import 'post_id.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  @JsonKey(name: '_id')
  String? id;
  String? description;
  bool? shared;
  PostId? postId;
  bool? isDeleted;
  List<dynamic>? likes;
  List<dynamic>? reported;
  String? privacy;
  List<dynamic>? comments;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;
  CreatedBy? createdBy;
  String? location;
  String? media;
  String? mimeType;

  Post({
    this.id,
    this.description,
    this.shared,
    this.postId,
    this.isDeleted,
    this.likes,
    this.reported,
    this.privacy,
    this.comments,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.createdBy,
    this.location,
    this.media,
    this.mimeType,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}
