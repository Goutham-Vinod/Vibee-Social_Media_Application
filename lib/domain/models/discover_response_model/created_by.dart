import 'package:json_annotation/json_annotation.dart';

part 'created_by.g.dart';

@JsonSerializable()
class CreatedBy {
  @JsonKey(name: '_id')
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? password;
  List<String>? pendingRequests;
  List<String>? friends;
  List<dynamic>? blockedUsers;
  List<dynamic>? savedPosts;
  bool? isBlocked;
  bool? isVerified;
  List<dynamic>? pendingSentRequest;
  bool? elite;
  String? subscriptionStatus;
  DateTime? createdAt;
  DateTime? updatedAt;
  @JsonKey(name: '__v')
  int? v;
  DateTime? dob;
  String? profilePicture;
  String? coverPicture;
  String? username;
  String? location;
  String? otp;

  CreatedBy({
    this.id,
    this.firstName,
    this.lastName,
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
    this.dob,
    this.profilePicture,
    this.coverPicture,
    this.username,
    this.location,
    this.otp,
  });

  factory CreatedBy.fromJson(Map<String, dynamic> json) {
    return _$CreatedByFromJson(json);
  }

  Map<String, dynamic> toJson() => _$CreatedByToJson(this);
}
