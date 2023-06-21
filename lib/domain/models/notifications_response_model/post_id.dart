import 'package:json_annotation/json_annotation.dart';

part 'post_id.g.dart';

@JsonSerializable()
class PostId {
  @JsonKey(name: '_id')
  String? id;
  String? createdBy;
  String? description;
  String? location;
  bool? shared;
  bool? isDeleted;
  List<dynamic>? likes;
  List<dynamic>? reported;
  String? privacy;
  List<dynamic>? comments;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  PostId({
    this.id,
    this.createdBy,
    this.description,
    this.location,
    this.shared,
    this.isDeleted,
    this.likes,
    this.reported,
    this.privacy,
    this.comments,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory PostId.fromJson(Map<String, dynamic> json) {
    return _$PostIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$PostIdToJson(this);
}
