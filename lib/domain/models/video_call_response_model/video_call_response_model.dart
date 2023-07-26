import 'package:json_annotation/json_annotation.dart';

import 'from.dart';
import 'to.dart';

part 'video_call_response_model.g.dart';

@JsonSerializable()
class VideoCallResponseModel {
  From? from;
  To? to;
  bool? isVideoCall;
  String? conversationId;
  bool? isLive;
  @JsonKey(name: '_id')
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;

  VideoCallResponseModel({
    this.from,
    this.to,
    this.isVideoCall,
    this.conversationId,
    this.isLive,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory VideoCallResponseModel.fromJson(Map<String, dynamic> json) {
    return _$VideoCallResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$VideoCallResponseModelToJson(this);
}
