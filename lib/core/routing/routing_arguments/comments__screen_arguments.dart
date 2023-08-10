class CommentsScreenArguments {
  final bool? isMyPost; // dafault false
  final bool? isSavedPostPageWidget; // default false
  final String? postNetworkImageUrl;
  final String? dpNetworkImageApiPath;
  final DateTime? dateNTime;
  final String description;
  final String profileName;
  final String postId;
  final String? place;
  final bool isLiked;
  final String username;
  final bool? disablePostWidgetHeader;

  CommentsScreenArguments({
    this.postNetworkImageUrl,
    this.dpNetworkImageApiPath,
    this.dateNTime,
    this.place,
    required this.description,
    required this.profileName,
    required this.postId,
    required this.username,
    this.isSavedPostPageWidget,
    this.isMyPost,
    this.disablePostWidgetHeader,
    required this.isLiked,
  });
}
