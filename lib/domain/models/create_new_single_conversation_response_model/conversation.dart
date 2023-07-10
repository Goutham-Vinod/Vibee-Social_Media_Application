import 'package:json_annotation/json_annotation.dart';

import 'latest_message.dart';

part 'conversation.g.dart';

@JsonSerializable()
class Conversation {
  @JsonKey(name: '_id')
  String? id;
  bool? isGroupChat;
  bool? isDeleted;
  List<String>? users;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;
  LatestMessage? latestMessage;

  Conversation({
    this.id,
    this.isGroupChat,
    this.isDeleted,
    this.users,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.latestMessage,
  });

  factory Conversation.fromJson(Map<String, dynamic> json) {
    return _$ConversationFromJson(json);
  }

  Map<String, dynamic> toJson() => _$ConversationToJson(this);
}
