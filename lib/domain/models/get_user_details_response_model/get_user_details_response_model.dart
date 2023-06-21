import 'package:json_annotation/json_annotation.dart';

import 'loggedin_user.dart';
import 'user.dart';

part 'get_user_details_response_model.g.dart';

@JsonSerializable()
class GetUserDetailsResponseModel {
  User? user;
  LoggedinUser? loggedinUser;
  bool? friend;
  bool? pending;
  bool? requestReceived;

  GetUserDetailsResponseModel({
    this.user,
    this.loggedinUser,
    this.friend,
    this.pending,
    this.requestReceived,
  });

  factory GetUserDetailsResponseModel.fromJson(Map<String, dynamic> json) {
    return _$GetUserDetailsResponseModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$GetUserDetailsResponseModelToJson(this);
}
