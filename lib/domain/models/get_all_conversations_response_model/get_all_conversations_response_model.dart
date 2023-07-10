import 'package:json_annotation/json_annotation.dart';

import 'sender.dart';
import 'user.dart';

part 'get_all_conversations_response_model.g.dart';

@JsonSerializable()
class GetAllConversationsResponseModel {
  @JsonKey(name: '_id')
  String? id;
  String? chatName;
  bool? isGroupChat;
  String? groupAdmin;
  bool? isDeleted;
  List<User>? users;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;
  String? message;
  Sender? sender;

  GetAllConversationsResponseModel({
    this.id,
    this.chatName,
    this.isGroupChat,
    this.groupAdmin,
    this.isDeleted,
    this.users,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.message,
    this.sender,
  });

  factory GetAllConversationsResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetAllConversationsResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$GetAllConversationsResponseModelToJson(this);
  }
}
