import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable()
class User {
  @JsonKey(name: '_id')
  String? id;
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? phone;
  List<dynamic>? blockedUsers;
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

  User({
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.email,
    this.phone,
    this.blockedUsers,
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

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);

  Map<String, dynamic> toJson() => _$UserToJson(this);
}
