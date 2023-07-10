import 'package:json_annotation/json_annotation.dart';

import 'sender.dart';

part 'share_post_as_message_response_model.g.dart';

@JsonSerializable()
class SharePostAsMessageResponseModel {
  Sender? sender;
  String? content;
  String? conversation;
  List<dynamic>? readBy;
  bool? isLink;
  @JsonKey(name: '_id')
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  SharePostAsMessageResponseModel({
    this.sender,
    this.content,
    this.conversation,
    this.readBy,
    this.isLink,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory SharePostAsMessageResponseModel.fromJson(Map<String, dynamic> json) {
    return _$SharePostAsMessageResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$SharePostAsMessageResponseModelToJson(this);
  }
}
