import 'package:json_annotation/json_annotation.dart';

part 'sender.g.dart';

@JsonSerializable()
class Sender {
  @JsonKey(name: '_id')
  String? id;
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? phone;
  List<dynamic>? friends;
  List<dynamic>? blockedUsers;
  List<String>? savedPosts;
  bool? isBlocked;
  bool? isVerified;
  bool? elite;
  String? subscriptionStatus;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;
  String? otp;
  String? coverPicture;
  DateTime? dob;
  String? profilePicture;
  String? location;

  Sender({
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.email,
    this.phone,
    this.friends,
    this.blockedUsers,
    this.savedPosts,
    this.isBlocked,
    this.isVerified,
    this.elite,
    this.subscriptionStatus,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.otp,
    this.coverPicture,
    this.dob,
    this.profilePicture,
    this.location,
  });

  factory Sender.fromJson(Map<String, dynamic> json) {
    return _$SenderFromJson(json);
  }

  Map<String, dynamic> toJson() => _$SenderToJson(this);
}
