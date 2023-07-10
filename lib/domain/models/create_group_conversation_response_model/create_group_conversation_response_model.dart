import 'package:json_annotation/json_annotation.dart';

import 'user.dart';

part 'create_group_conversation_response_model.g.dart';

@JsonSerializable()
class CreateGroupConversationResponseModel {
  String? chatName;
  bool? isGroupChat;
  String? groupAdmin;
  bool? isDeleted;
  List<User>? users;
  @JsonKey(name: '_id')
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  CreateGroupConversationResponseModel({
    this.chatName,
    this.isGroupChat,
    this.groupAdmin,
    this.isDeleted,
    this.users,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory CreateGroupConversationResponseModel.fromJson(
      Map<String, dynamic> json) {
    return _$CreateGroupConversationResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CreateGroupConversationResponseModelToJson(this);
  }
}
