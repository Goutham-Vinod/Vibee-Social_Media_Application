import 'package:json_annotation/json_annotation.dart';

import 'created_by.dart';

part 'get_saved_posts_response_model.g.dart';

@JsonSerializable()
class GetSavedPostsResponseModel {
  @JsonKey(name: '_id')
  String? id;
  CreatedBy? createdBy;
  String? description;
  String? location;
  String? media;
  bool? shared;
  bool? isDeleted;
  List<String>? likes;
  List<dynamic>? reported;
  String? privacy;
  String? mimeType;
  List<dynamic>? comments;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  GetSavedPostsResponseModel({
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
  });

  factory GetSavedPostsResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetSavedPostsResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetSavedPostsResponseModelToJson(this);
}
