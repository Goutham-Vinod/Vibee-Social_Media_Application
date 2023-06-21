import 'package:json_annotation/json_annotation.dart';

part 'loggedin_user.g.dart';

@JsonSerializable()
class LoggedinUser {
  String? id;
  String? email;

  LoggedinUser({this.id, this.email});

  factory LoggedinUser.fromJson(Map<String, dynamic> json) {
    return _$LoggedinUserFromJson(json);
  }

  Map<String, dynamic> toJson() => _$LoggedinUserToJson(this);
}
