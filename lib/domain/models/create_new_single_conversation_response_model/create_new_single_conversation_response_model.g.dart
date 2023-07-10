// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_new_single_conversation_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CreateNewSingleConversationResponseModel
    _$CreateNewSingleConversationResponseModelFromJson(
            Map<String, dynamic> json) =>
        CreateNewSingleConversationResponseModel(
          message: json['message'] as String?,
          conversation: json['conversation'] == null
              ? null
              : Conversation.fromJson(
                  json['conversation'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$CreateNewSingleConversationResponseModelToJson(
        CreateNewSingleConversationResponseModel instance) =>
    <String, dynamic>{
      'message': instance.message,
      'conversation': instance.conversation,
    };
