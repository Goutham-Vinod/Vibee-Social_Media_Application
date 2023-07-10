import 'package:json_annotation/json_annotation.dart';

part 'latest_message.g.dart';

@JsonSerializable()
class LatestMessage {
  String? message;
  String? sender;
  DateTime? updatedAt;

  LatestMessage({this.message, this.sender, this.updatedAt});

  factory LatestMessage.fromJson(Map<String, dynamic> json) {
    return _$LatestMessageFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LatestMessageToJson(this);
}
