// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'from.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

From _$FromFromJson(Map<String, dynamic> json) => From(
      id: json['_id'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      email: json['email'] as String?,
      phone: json['phone'] as String?,
      pendingRequests: (json['pendingRequests'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      friends:
          (json['friends'] as List<dynamic>?)?.map((e) => e as String).toList(),
      blockedUsers: json['blockedUsers'] as List<dynamic>?,
      savedPosts: json['savedPosts'] as List<dynamic>?,
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
      dob: json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      profilePicture: json['profilePicture'] as String?,
      coverPicture: json['coverPicture'] as String?,
      username: json['username'] as String?,
      location: json['location'] as String?,
      otp: json['otp'] as String?,
    );

Map<String, dynamic> _$FromToJson(From instance) => <String, dynamic>{
      '_id': instance.id,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
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
      'dob': instance.dob?.toIso8601String(),
      'profilePicture': instance.profilePicture,
      'coverPicture': instance.coverPicture,
      'username': instance.username,
      'location': instance.location,
      'otp': instance.otp,
    };
