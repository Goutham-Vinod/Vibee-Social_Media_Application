// To parse this JSON data, do
//
//     final videoCallResponseModel = videoCallResponseModelFromJson(jsonString);

import 'dart:convert';

VideoCallResponseModel videoCallResponseModelFromJson(String str) =>
    VideoCallResponseModel.fromJson(json.decode(str));

String videoCallResponseModelToJson(VideoCallResponseModel data) =>
    json.encode(data.toJson());

class VideoCallResponseModel {
  From? from;
  From? to;
  bool? isVideoCall;
  String? conversationId;
  bool? isLive;
  String? id;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  VideoCallResponseModel({
    this.from,
    this.to,
    this.isVideoCall,
    this.conversationId,
    this.isLive,
    this.id,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory VideoCallResponseModel.fromJson(Map<String, dynamic> json) =>
      VideoCallResponseModel(
        from: json["from"] == null ? null : From.fromJson(json["from"]),
        to: json["to"] == null ? null : From.fromJson(json["to"]),
        isVideoCall: json["isVideoCall"],
        conversationId: json["conversationId"],
        isLive: json["isLive"],
        id: json["_id"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "from": from?.toJson(),
        "to": to?.toJson(),
        "isVideoCall": isVideoCall,
        "conversationId": conversationId,
        "isLive": isLive,
        "_id": id,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
      };
}

class From {
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
  int? v;
  DateTime? dob;
  String? profilePicture;
  String? coverPicture;

  From({
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
    this.coverPicture,
  });

  factory From.fromJson(Map<String, dynamic> json) => From(
        id: json["_id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
        pendingRequests: json["pendingRequests"] == null
            ? []
            : List<dynamic>.from(json["pendingRequests"]!.map((x) => x)),
        friends: json["friends"] == null
            ? []
            : List<String>.from(json["friends"]!.map((x) => x)),
        blockedUsers: json["blockedUsers"] == null
            ? []
            : List<dynamic>.from(json["blockedUsers"]!.map((x) => x)),
        savedPosts: json["savedPosts"] == null
            ? []
            : List<dynamic>.from(json["savedPosts"]!.map((x) => x)),
        isBlocked: json["isBlocked"],
        isVerified: json["isVerified"],
        pendingSentRequest: json["pendingSentRequest"] == null
            ? []
            : List<dynamic>.from(json["pendingSentRequest"]!.map((x) => x)),
        elite: json["elite"],
        subscriptionStatus: json["subscriptionStatus"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
        profilePicture: json["profilePicture"],
        coverPicture: json["coverPicture"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "firstName": firstName,
        "lastName": lastName,
        "username": username,
        "email": email,
        "phone": phone,
        "pendingRequests": pendingRequests == null
            ? []
            : List<dynamic>.from(pendingRequests!.map((x) => x)),
        "friends":
            friends == null ? [] : List<dynamic>.from(friends!.map((x) => x)),
        "blockedUsers": blockedUsers == null
            ? []
            : List<dynamic>.from(blockedUsers!.map((x) => x)),
        "savedPosts": savedPosts == null
            ? []
            : List<dynamic>.from(savedPosts!.map((x) => x)),
        "isBlocked": isBlocked,
        "isVerified": isVerified,
        "pendingSentRequest": pendingSentRequest == null
            ? []
            : List<dynamic>.from(pendingSentRequest!.map((x) => x)),
        "elite": elite,
        "subscriptionStatus": subscriptionStatus,
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "dob": dob?.toIso8601String(),
        "profilePicture": profilePicture,
        "coverPicture": coverPicture,
      };
}
