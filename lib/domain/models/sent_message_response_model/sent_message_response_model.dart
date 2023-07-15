import 'package:json_annotation/json_annotation.dart';

import 'sender.dart';

part 'sent_message_response_model.g.dart';

@JsonSerializable()
class SentMessageResponseModel {
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

  SentMessageResponseModel({
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

  factory SentMessageResponseModel.fromJson(Map<String, dynamic> json) {
    return _$SentMessageResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SentMessageResponseModelToJson(this);
}
