import 'package:json_annotation/json_annotation.dart';

import 'comment.dart';

part 'get_details_of_single_post_response_model.g.dart';

@JsonSerializable()
class GetDetailsOfSinglePostResponseModel {
  @JsonKey(name: '_id')
  String? id;
  String? createdBy;
  String? description;
  bool? shared;
  String? postId;
  bool? isDeleted;
  List<dynamic>? likes;
  List<dynamic>? reported;
  String? privacy;
  List<Comment>? comments;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  GetDetailsOfSinglePostResponseModel({
    this.id,
    this.createdBy,
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
  });

  factory GetDetailsOfSinglePostResponseModel.fromJson(
      Map<String, dynamic> json) {
    return _$GetDetailsOfSinglePostResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$GetDetailsOfSinglePostResponseModelToJson(this);
  }
}
