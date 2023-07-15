import 'package:json_annotation/json_annotation.dart';

import 'created_by.dart';

part 'post.g.dart';

@JsonSerializable()
class Post {
  CreatedBy? createdBy;
  String? description;
  String? location;
  bool? shared;
  bool? isDeleted;
  List<dynamic>? likes;
  List<dynamic>? reported;
  String? privacy;
  @JsonKey(name: '_id')
  String? id;
  List<dynamic>? comments;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  Post({
    this.createdBy,
    this.description,
    this.location,
    this.shared,
    this.isDeleted,
    this.likes,
    this.reported,
    this.privacy,
    this.id,
    this.comments,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Post.fromJson(Map<String, dynamic> json) => _$PostFromJson(json);

  Map<String, dynamic> toJson() => _$PostToJson(this);
}
