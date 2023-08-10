import 'package:json_annotation/json_annotation.dart';

part 'get_details_of_single_post_response_model.g.dart';

@JsonSerializable()
class GetDetailsOfSinglePostResponseModel {
  @JsonKey(name: '_id')
  String? postId;
  String? description;
  String? location;
  String? media;
  List? likes;

  GetDetailsOfSinglePostResponseModel({
    this.postId,
    this.description,
    this.location,
    this.media,
    this.likes,
  });

  factory GetDetailsOfSinglePostResponseModel.fromJson(
      Map<String, dynamic> json) {
    return _$GetDetailsOfSinglePostResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$GetDetailsOfSinglePostResponseModelToJson(this);
  }
}
