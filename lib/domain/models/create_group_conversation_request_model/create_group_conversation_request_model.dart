import 'package:json_annotation/json_annotation.dart';

part 'create_group_conversation_request_model.g.dart';

@JsonSerializable()
class CreateGroupConversationRequestModel {
  List<String>? members;
  bool? isGroupChat;
  String? chatName;

  CreateGroupConversationRequestModel({
    this.members,
    this.isGroupChat,
    this.chatName,
  });

  factory CreateGroupConversationRequestModel.fromJson(
      Map<String, dynamic> json) {
    return _$CreateGroupConversationRequestModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CreateGroupConversationRequestModelToJson(this);
  }
}
