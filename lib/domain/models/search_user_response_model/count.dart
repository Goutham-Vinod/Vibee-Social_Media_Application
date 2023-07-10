import 'package:json_annotation/json_annotation.dart';

part 'count.g.dart';

@JsonSerializable()
class Count {
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
  String? coverPicture;
  DateTime? dob;
  String? location;
  String? profilePicture;

  Count({
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
    this.coverPicture,
    this.dob,
    this.location,
    this.profilePicture,
  });

  factory Count.fromJson(Map<String, dynamic> json) => _$CountFromJson(json);

  Map<String, dynamic> toJson() => _$CountToJson(this);
}
