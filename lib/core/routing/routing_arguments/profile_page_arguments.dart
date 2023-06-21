class ProfilePageArguments {
  ProfilePageArguments({
    required this.firstName,
    required this.lastName,
    required this.username,
    required this.isCurrentUserProfile,
    this.isFriend,
    this.isFriendRequestSent,
  });
  final String? firstName;
  final String? lastName;
  final String? username;
  final bool isCurrentUserProfile;
  final bool? isFriend;
  final bool? isFriendRequestSent;
}
