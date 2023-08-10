// To parse this JSON data, do
//
//     final getPostsResponseModel = getPostsResponseModelFromJson(jsonString);

import 'dart:convert';

GetPostsResponseModel getPostsResponseModelFromJson(String str) =>
    GetPostsResponseModel.fromJson(json.decode(str));

String getPostsResponseModelToJson(GetPostsResponseModel data) =>
    json.encode(data.toJson());

class GetPostsResponseModel {
  List<Post>? posts;
  int? totalCount;

  GetPostsResponseModel({
    this.posts,
    this.totalCount,
  });

  factory GetPostsResponseModel.fromJson(Map<String, dynamic> json) =>
      GetPostsResponseModel(
        posts: json["posts"] == null
            ? []
            : List<Post>.from(json["posts"]!.map((x) => Post.fromJson(x))),
        totalCount: json["totalCount"],
      );

  Map<String, dynamic> toJson() => {
        "posts": posts == null
            ? []
            : List<dynamic>.from(posts!.map((x) => x.toJson())),
        "totalCount": totalCount,
      };
}

class Post {
  String? id;
  String? description;
  bool? shared;
  PostId? postId;
  bool? isDeleted;
  List<String>? likes;
  List<dynamic>? reported;
  String? privacy;
  List<PostComment>? comments;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  PostCreatedBy? createdBy;
  String? location;
  String? media;
  String? mimeType;

  Post({
    this.id,
    this.description,
    this.shared,
    this.postId,
    this.isDeleted,
    this.likes,
    this.reported,
    this.privacy,
    this.comments,
    this.createdAt,
    this.updatedAt,
    this.v,
    this.createdBy,
    this.location,
    this.media,
    this.mimeType,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["_id"],
        description: json["description"],
        shared: json["shared"],
        postId: json["postId"] == null ? null : PostId.fromJson(json["postId"]),
        isDeleted: json["isDeleted"],
        likes: json["likes"] == null
            ? []
            : List<String>.from(json["likes"]!.map((x) => x)),
        reported: json["reported"] == null
            ? []
            : List<dynamic>.from(json["reported"]!.map((x) => x)),
        privacy: json["privacy"],
        comments: json["comments"] == null
            ? []
            : List<PostComment>.from(
                json["comments"]!.map((x) => PostComment.fromJson(x))),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        createdBy: json["createdBy"] == null
            ? null
            : PostCreatedBy.fromJson(json["createdBy"]),
        location: json["location"],
        media: json["media"],
        mimeType: json["mimeType"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "description": description,
        "shared": shared,
        "postId": postId?.toJson(),
        "isDeleted": isDeleted,
        "likes": likes == null ? [] : List<dynamic>.from(likes!.map((x) => x)),
        "reported":
            reported == null ? [] : List<dynamic>.from(reported!.map((x) => x)),
        "privacy": privacy,
        "comments": comments == null
            ? []
            : List<dynamic>.from(comments!.map((x) => x.toJson())),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
        "createdBy": createdBy?.toJson(),
        "location": location,
        "media": media,
        "mimeType": mimeType,
      };
}

class PostComment {
  List<CreatedBy>? userId;
  String? text;
  bool? isDeleted;
  String? id;
  List<dynamic>? reply;
  DateTime? createdAt;
  DateTime? updatedAt;

  PostComment({
    this.userId,
    this.text,
    this.isDeleted,
    this.id,
    this.reply,
    this.createdAt,
    this.updatedAt,
  });

  factory PostComment.fromJson(Map<String, dynamic> json) => PostComment(
        userId: json["userId"] == null
            ? []
            : List<CreatedBy>.from(
                json["userId"]!.map((x) => CreatedBy.fromJson(x))),
        text: json["text"],
        isDeleted: json["isDeleted"],
        id: json["_id"],
        reply: json["reply"] == null
            ? []
            : List<dynamic>.from(json["reply"]!.map((x) => x)),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "userId": userId == null
            ? []
            : List<dynamic>.from(userId!.map((x) => x.toJson())),
        "text": text,
        "isDeleted": isDeleted,
        "_id": id,
        "reply": reply == null ? [] : List<dynamic>.from(reply!.map((x) => x)),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };
}

class CreatedBy {
  String? id;
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? phone;
  String? password;
  List<String>? pendingRequests;
  List<String>? friends;
  List<dynamic>? blockedUsers;
  List<String>? savedPosts;
  bool? isBlocked;
  bool? isVerified;
  List<String>? pendingSentRequest;
  bool? elite;
  String? subscriptionStatus;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  String? coverPicture;
  DateTime? dob;
  String? profilePicture;
  String? location;

  CreatedBy({
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
    this.profilePicture,
    this.location,
  });

  factory CreatedBy.fromJson(Map<String, dynamic> json) => CreatedBy(
        id: json["_id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
        password: json["password"],
        pendingRequests: json["pendingRequests"] == null
            ? []
            : List<String>.from(json["pendingRequests"]!.map((x) => x)),
        friends: json["friends"] == null
            ? []
            : List<String>.from(json["friends"]!.map((x) => x)),
        blockedUsers: json["blockedUsers"] == null
            ? []
            : List<dynamic>.from(json["blockedUsers"]!.map((x) => x)),
        savedPosts: json["savedPosts"] == null
            ? []
            : List<String>.from(json["savedPosts"]!.map((x) => x)),
        isBlocked: json["isBlocked"],
        isVerified: json["isVerified"],
        pendingSentRequest: json["pendingSentRequest"] == null
            ? []
            : List<String>.from(json["pendingSentRequest"]!.map((x) => x)),
        elite: json["elite"],
        subscriptionStatus: json["subscriptionStatus"],
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        coverPicture: json["coverPicture"],
        dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
        profilePicture: json["profilePicture"],
        location: json["location"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "firstName": firstName,
        "lastName": lastName,
        "username": username,
        "email": email,
        "phone": phone,
        "password": password,
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
        "coverPicture": coverPicture,
        "dob": dob?.toIso8601String(),
        "profilePicture": profilePicture,
        "location": location,
      };
}

class PostCreatedBy {
  String? id;
  String? firstName;
  String? lastName;
  String? email;
  String? phone;
  String? password;
  List<String>? pendingRequests;
  List<String>? friends;
  List<dynamic>? blockedUsers;
  List<String>? savedPosts;
  bool? isBlocked;
  bool? isVerified;
  List<String>? pendingSentRequest;
  bool? elite;
  String? subscriptionStatus;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  DateTime? dob;
  String? profilePicture;
  String? coverPicture;
  String? username;
  String? otp;
  String? location;

  PostCreatedBy({
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
    this.otp,
    this.location,
  });

  factory PostCreatedBy.fromJson(Map<String, dynamic> json) => PostCreatedBy(
        id: json["_id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        email: json["email"],
        phone: json["phone"],
        password: json["password"],
        pendingRequests: json["pendingRequests"] == null
            ? []
            : List<String>.from(json["pendingRequests"]!.map((x) => x)),
        friends: json["friends"] == null
            ? []
            : List<String>.from(json["friends"]!.map((x) => x)),
        blockedUsers: json["blockedUsers"] == null
            ? []
            : List<dynamic>.from(json["blockedUsers"]!.map((x) => x)),
        savedPosts: json["savedPosts"] == null
            ? []
            : List<String>.from(json["savedPosts"]!.map((x) => x)),
        isBlocked: json["isBlocked"],
        isVerified: json["isVerified"],
        pendingSentRequest: json["pendingSentRequest"] == null
            ? []
            : List<String>.from(json["pendingSentRequest"]!.map((x) => x)),
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
        username: json["username"],
        otp: json["otp"],
        location: json["location"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "firstName": firstName,
        "lastName": lastName,
        "email": email,
        "phone": phone,
        "password": password,
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
        "username": username,
        "otp": otp,
        "location": location,
      };
}

class PostId {
  String? id;
  CreatedBy? createdBy;
  String? description;
  String? location;
  String? media;
  bool? shared;
  bool? isDeleted;
  List<String>? likes;
  List<dynamic>? reported;
  String? privacy;
  String? mimeType;
  List<PostIdComment>? comments;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;

  PostId({
    this.id,
    this.createdBy,
    this.description,
    this.location,
    this.media,
    this.shared,
    this.isDeleted,
    this.likes,
    this.reported,
    this.privacy,
    this.mimeType,
    this.comments,
    this.createdAt,
    this.updatedAt,
    this.v,
  });

  factory PostId.fromJson(Map<String, dynamic> json) => PostId(
        id: json["_id"],
        createdBy: json["createdBy"] == null
            ? null
            : CreatedBy.fromJson(json["createdBy"]),
        description: json["description"],
        location: json["location"],
        media: json["media"],
        shared: json["shared"],
        isDeleted: json["isDeleted"],
        likes: json["likes"] == null
            ? []
            : List<String>.from(json["likes"]!.map((x) => x)),
        reported: json["reported"] == null
            ? []
            : List<dynamic>.from(json["reported"]!.map((x) => x)),
        privacy: json["privacy"],
        mimeType: json["mimeType"],
        comments: json["comments"] == null
            ? []
            : List<PostIdComment>.from(
                json["comments"]!.map((x) => PostIdComment.fromJson(x))),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
      );

  Map<String, dynamic> toJson() => {
        "_id": id,
        "createdBy": createdBy?.toJson(),
        "description": description,
        "location": location,
        "media": media,
        "shared": shared,
        "isDeleted": isDeleted,
        "likes": likes == null ? [] : List<dynamic>.from(likes!.map((x) => x)),
        "reported":
            reported == null ? [] : List<dynamic>.from(reported!.map((x) => x)),
        "privacy": privacy,
        "mimeType": mimeType,
        "comments": comments == null
            ? []
            : List<dynamic>.from(comments!.map((x) => x.toJson())),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
        "__v": v,
      };
}

class PostIdComment {
  String? userId;
  String? text;
  bool? isDeleted;
  String? id;
  List<dynamic>? reply;
  DateTime? createdAt;
  DateTime? updatedAt;

  PostIdComment({
    this.userId,
    this.text,
    this.isDeleted,
    this.id,
    this.reply,
    this.createdAt,
    this.updatedAt,
  });

  factory PostIdComment.fromJson(Map<String, dynamic> json) => PostIdComment(
        userId: json["userId"],
        text: json["text"],
        isDeleted: json["isDeleted"],
        id: json["_id"],
        reply: json["reply"] == null
            ? []
            : List<dynamic>.from(json["reply"]!.map((x) => x)),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
      );

  Map<String, dynamic> toJson() => {
        "userId": userId,
        "text": text,
        "isDeleted": isDeleted,
        "_id": id,
        "reply": reply == null ? [] : List<dynamic>.from(reply!.map((x) => x)),
        "createdAt": createdAt?.toIso8601String(),
        "updatedAt": updatedAt?.toIso8601String(),
      };
}
