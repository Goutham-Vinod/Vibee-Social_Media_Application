// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_id.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserId _$UserIdFromJson(Map<String, dynamic> json) => UserId(
      id: json['_id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      username: json['username'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      pendingRequests: json['pendingRequests'] as List<dynamic>?,
      friends:
          (json['friends'] as List<dynamic>?)?.map((e) => e as String).toList(),
      blockedUsers: json['blockedUsers'] as List<dynamic>?,
      savedPosts: (json['savedPosts'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      isBlocked: json['isBlocked'] as bool?,
      isVerified: json['isVerified'] as bool?,
      pendingSentRequest: json['pendingSentRequest'] as List<dynamic>?,
      elite: json['elite'] as bool?,
      subscriptionStatus: json['subscriptionStatus'] as String?,
      createdAt: json['createdAt'] == null
          ? null
          : DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      v: json['__v'] as int?,
      otp: json['otp'] as String?,
      coverPicture: json['coverPicture'] as String?,
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      profilePicture: json['profilePicture'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$UserIdToJson(UserId instance) => <String, dynamic>{
      '_id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'username': instance.username,
      'email': instance.email,
      'phone': instance.phone,
      'pendingRequests': instance.pendingRequests,
      'friends': instance.friends,
      'blockedUsers': instance.blockedUsers,
      'savedPosts': instance.savedPosts,
      'isBlocked': instance.isBlocked,
      'isVerified': instance.isVerified,
      'pendingSentRequest': instance.pendingSentRequest,
      'elite': instance.elite,
      'subscriptionStatus': instance.subscriptionStatus,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      '__v': instance.v,
      'otp': instance.otp,
      'coverPicture': instance.coverPicture,
      'dob': instance.dob?.toIso8601String(),
      'profilePicture': instance.profilePicture,
      'location': instance.location,
    };
