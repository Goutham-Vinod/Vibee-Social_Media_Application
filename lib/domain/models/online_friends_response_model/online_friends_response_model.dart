import 'package:json_annotation/json_annotation.dart';

import 'user_id.dart';

part 'online_friends_response_model.g.dart';

@JsonSerializable()
class OnlineFriendsResponseModel {
  @JsonKey(name: '_id')
  String? id;
  UserId? userId;
  String? socketId;

  OnlineFriendsResponseModel({this.id, this.userId, this.socketId});

  factory OnlineFriendsResponseModel.fromJson(Map<String, dynamic> json) {
    return _$OnlineFriendsResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$OnlineFriendsResponseModelToJson(this);
}
