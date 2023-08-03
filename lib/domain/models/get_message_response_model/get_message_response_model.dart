import 'package:json_annotation/json_annotation.dart';

import 'latest_message.dart';
import 'message.dart';
import 'user.dart';

part 'get_message_response_model.g.dart';

@JsonSerializable()
class GetMessageResponseModel {
  @JsonKey(name: '_id')
  String? id;
  String? chatName;
  bool? isGroupChat;
  String? groupAdmin;
  bool? isDeleted;
  List<User>? users;
  String? groupChatImage;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;
  LatestMessage? latestMessage;
  List<Message>? messages;

  GetMessageResponseModel({
    this.id,
    this.chatName,
    this.isGroupChat,
    this.groupAdmin,
    this.isDeleted,
    this.users,
    this.groupChatImage,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.latestMessage,
    this.messages,
  });

  factory GetMessageResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetMessageResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetMessageResponseModelToJson(this);
}
