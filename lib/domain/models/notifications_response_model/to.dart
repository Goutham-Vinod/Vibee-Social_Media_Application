import 'package:json_annotation/json_annotation.dart';

part 'to.g.dart';

@JsonSerializable()
class To {
  @JsonKey(name: '_id')
  String? id;
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? phone;
  List<dynamic>? pendingRequests;
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

  To({
    this.id,
    this.firstName,
    this.lastName,
    this.username,
    this.email,
    this.phone,
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
  });

  factory To.fromJson(Map<String, dynamic> json) => _$ToFromJson(json);

  Map<String, dynamic> toJson() => _$ToToJson(this);
}
