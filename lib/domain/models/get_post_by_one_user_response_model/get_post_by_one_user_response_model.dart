// To parse this JSON data, do
//
//     final getPostByOneUserResponseModel = getPostByOneUserResponseModelFromJson(jsonString);

import 'dart:convert';

GetPostByOneUserResponseModel getPostByOneUserResponseModelFromJson(
        String str) =>
    GetPostByOneUserResponseModel.fromJson(json.decode(str));

String getPostByOneUserResponseModelToJson(
        GetPostByOneUserResponseModel data) =>
    json.encode(data.toJson());

class GetPostByOneUserResponseModel {
  List<Post>? posts;

  GetPostByOneUserResponseModel({
    this.posts,
  });

  factory GetPostByOneUserResponseModel.fromJson(Map<String, dynamic> json) =>
      GetPostByOneUserResponseModel(
        posts: json["posts"] == null
            ? []
            : List<Post>.from(json["posts"]!.map((x) => Post.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "posts": posts == null
            ? []
            : List<dynamic>.from(posts!.map((x) => x.toJson())),
      };
}

class Post {
  String? id;
  PostCreatedBy? createdBy;
  String? description;
  String? location;
  String? media;
  bool? shared;
  bool? isDeleted;
  List<String>? likes;
  List<dynamic>? reported;
  String? privacy;
  String? mimeType;
  List<Comment>? comments;
  DateTime? createdAt;
  DateTime? updatedAt;
  int? v;
  PostId? postId;

  Post({
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
    this.postId,
  });

  factory Post.fromJson(Map<String, dynamic> json) => Post(
        id: json["_id"],
        createdBy: json["createdBy"] == null
            ? null
            : PostCreatedBy.fromJson(json["createdBy"]),
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
            : List<Comment>.from(
                json["comments"]!.map((x) => Comment.fromJson(x))),
        createdAt: json["createdAt"] == null
            ? null
            : DateTime.parse(json["createdAt"]),
        updatedAt: json["updatedAt"] == null
            ? null
            : DateTime.parse(json["updatedAt"]),
        v: json["__v"],
        postId: json["postId"] == null ? null : PostId.fromJson(json["postId"]),
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
        "postId": postId?.toJson(),
      };
}

class Comment {
  String? userId;
  String? text;
  bool? isDeleted;
  String? id;
  List<dynamic>? reply;
  DateTime? createdAt;
  DateTime? updatedAt;

  Comment({
    this.userId,
    this.text,
    this.isDeleted,
    this.id,
    this.reply,
    this.createdAt,
    this.updatedAt,
  });

  factory Comment.fromJson(Map<String, dynamic> json) => Comment(
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

class PostCreatedBy {
  String? id;
  String? firstName;
  String? lastName;
  String? username;
  String? email;
  String? phone;
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

  PostCreatedBy({
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
    this.coverPicture,
    this.dob,
    this.profilePicture,
    this.location,
  });

  factory PostCreatedBy.fromJson(Map<String, dynamic> json) => PostCreatedBy(
        id: json["_id"],
        firstName: json["firstName"],
        lastName: json["lastName"],
        username: json["username"],
        email: json["email"],
        phone: json["phone"],
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

class PostId {
  String? id;
  PostIdCreatedBy? createdBy;
  String? description;
  String? location;
  String? media;
  bool? shared;
  bool? isDeleted;
  List<String>? likes;
  List<dynamic>? reported;
  String? privacy;
  String? mimeType;
  List<Comment>? comments;
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
            : PostIdCreatedBy.fromJson(json["createdBy"]),
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
            : List<Comment>.from(
                json["comments"]!.map((x) => Comment.fromJson(x))),
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

class PostIdCreatedBy {
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

  PostIdCreatedBy({
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

  factory PostIdCreatedBy.fromJson(Map<String, dynamic> json) =>
      PostIdCreatedBy(
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
