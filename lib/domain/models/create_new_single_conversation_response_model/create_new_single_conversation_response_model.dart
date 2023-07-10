import 'package:json_annotation/json_annotation.dart';

import 'conversation.dart';

part 'create_new_single_conversation_response_model.g.dart';

@JsonSerializable()
class CreateNewSingleConversationResponseModel {
  String? message;
  Conversation? conversation;

  CreateNewSingleConversationResponseModel({
    this.message,
    this.conversation,
  });

  factory CreateNewSingleConversationResponseModel.fromJson(
      Map<String, dynamic> json) {
    return _$CreateNewSingleConversationResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    return _$CreateNewSingleConversationResponseModelToJson(this);
  }
}
