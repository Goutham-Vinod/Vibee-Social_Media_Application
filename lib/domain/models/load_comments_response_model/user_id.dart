import 'package:json_annotation/json_annotation.dart';

part 'user_id.g.dart';

@JsonSerializable()
class UserId {
  @JsonKey(name: '_id')
  String? id;
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? phone;
  String? password;
  List<dynamic>? pendingRequests;
  List<String>? friends;
  List<dynamic>? blockedUsers;
  List<String>? savedPosts;
  bool? isBlocked;
  bool? isVerified;
  List<dynamic>? pendingSentRequest;
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

  UserId({
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.email,
    this.phone,
    this.password,
    this.pendingRequests,
    this.friends,
    this.blockedUsers,
    this.savedPosts,
    this.isBlocked,
    this.isVerified,
    this.pendingSentRequest,
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

  factory UserId.fromJson(Map<String, dynamic> json) {
    return _$UserIdFromJson(json);
  }

  Map<String, dynamic> toJson() => _$UserIdToJson(this);
}
