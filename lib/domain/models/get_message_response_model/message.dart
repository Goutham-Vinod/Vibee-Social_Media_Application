import 'package:json_annotation/json_annotation.dart';

import 'sender.dart';

part 'message.g.dart';

@JsonSerializable()
class Message {
  @JsonKey(name: '_id')
  String? id;
  Sender? sender;
  String? content;
  String? conversation;
  List<dynamic>? readBy;
  bool? isLink;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  Message({
    this.id,
    this.sender,
    this.content,
    this.conversation,
    this.readBy,
    this.isLink,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory Message.fromJson(Map<String, dynamic> json) {
    return _$MessageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$MessageToJson(this);
}
