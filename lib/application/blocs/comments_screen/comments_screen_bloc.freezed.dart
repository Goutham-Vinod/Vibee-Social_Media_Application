// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CommentsScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, bool isLiked)
        initalizeCommentsScreen,
    required TResult Function(String postId, String comment) sentComment,
    required TResult Function() likePost,
    required TResult Function(dynamic data) tstmsgEvent,
    required TResult Function(String? friendId, String? postId)
        sharePostAsMessage,
    required TResult Function(String postId, String description, String privacy)
        sharePost,
    required TResult Function() resetIsEmptySharePostDescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, bool isLiked)? initalizeCommentsScreen,
    TResult? Function(String postId, String comment)? sentComment,
    TResult? Function()? likePost,
    TResult? Function(dynamic data)? tstmsgEvent,
    TResult? Function(String? friendId, String? postId)? sharePostAsMessage,
    TResult? Function(String postId, String description, String privacy)?
        sharePost,
    TResult? Function()? resetIsEmptySharePostDescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, bool isLiked)? initalizeCommentsScreen,
    TResult Function(String postId, String comment)? sentComment,
    TResult Function()? likePost,
    TResult Function(dynamic data)? tstmsgEvent,
    TResult Function(String? friendId, String? postId)? sharePostAsMessage,
    TResult Function(String postId, String description, String privacy)?
        sharePost,
    TResult Function()? resetIsEmptySharePostDescription,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeCommentScreen value)
        initalizeCommentsScreen,
    required TResult Function(_SentComment value) sentComment,
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_TestMessageEvent value) tstmsgEvent,
    required TResult Function(_SharePostAsMessage value) sharePostAsMessage,
    required TResult Function(_SharePost value) sharePost,
    required TResult Function(_ResetIsEmptySharePostDescription value)
        resetIsEmptySharePostDescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult? Function(_SentComment value)? sentComment,
    TResult? Function(_LikePost value)? likePost,
    TResult? Function(_TestMessageEvent value)? tstmsgEvent,
    TResult? Function(_SharePostAsMessage value)? sharePostAsMessage,
    TResult? Function(_SharePost value)? sharePost,
    TResult? Function(_ResetIsEmptySharePostDescription value)?
        resetIsEmptySharePostDescription,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult Function(_SentComment value)? sentComment,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_TestMessageEvent value)? tstmsgEvent,
    TResult Function(_SharePostAsMessage value)? sharePostAsMessage,
    TResult Function(_SharePost value)? sharePost,
    TResult Function(_ResetIsEmptySharePostDescription value)?
        resetIsEmptySharePostDescription,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsScreenEventCopyWith<$Res> {
  factory $CommentsScreenEventCopyWith(
          CommentsScreenEvent value, $Res Function(CommentsScreenEvent) then) =
      _$CommentsScreenEventCopyWithImpl<$Res, CommentsScreenEvent>;
}

/// @nodoc
class _$CommentsScreenEventCopyWithImpl<$Res, $Val extends CommentsScreenEvent>
    implements $CommentsScreenEventCopyWith<$Res> {
  _$CommentsScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializeCommentScreenCopyWith<$Res> {
  factory _$$_InitializeCommentScreenCopyWith(_$_InitializeCommentScreen value,
          $Res Function(_$_InitializeCommentScreen) then) =
      __$$_InitializeCommentScreenCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId, bool isLiked});
}

/// @nodoc
class __$$_InitializeCommentScreenCopyWithImpl<$Res>
    extends _$CommentsScreenEventCopyWithImpl<$Res, _$_InitializeCommentScreen>
    implements _$$_InitializeCommentScreenCopyWith<$Res> {
  __$$_InitializeCommentScreenCopyWithImpl(_$_InitializeCommentScreen _value,
      $Res Function(_$_InitializeCommentScreen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? isLiked = null,
  }) {
    return _then(_$_InitializeCommentScreen(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      isLiked: null == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_InitializeCommentScreen implements _InitializeCommentScreen {
  const _$_InitializeCommentScreen(
      {required this.postId, required this.isLiked});

  @override
  final String postId;
  @override
  final bool isLiked;

  @override
  String toString() {
    return 'CommentsScreenEvent.initalizeCommentsScreen(postId: $postId, isLiked: $isLiked)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitializeCommentScreen &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId, isLiked);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializeCommentScreenCopyWith<_$_InitializeCommentScreen>
      get copyWith =>
          __$$_InitializeCommentScreenCopyWithImpl<_$_InitializeCommentScreen>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, bool isLiked)
        initalizeCommentsScreen,
    required TResult Function(String postId, String comment) sentComment,
    required TResult Function() likePost,
    required TResult Function(dynamic data) tstmsgEvent,
    required TResult Function(String? friendId, String? postId)
        sharePostAsMessage,
    required TResult Function(String postId, String description, String privacy)
        sharePost,
    required TResult Function() resetIsEmptySharePostDescription,
  }) {
    return initalizeCommentsScreen(postId, isLiked);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, bool isLiked)? initalizeCommentsScreen,
    TResult? Function(String postId, String comment)? sentComment,
    TResult? Function()? likePost,
    TResult? Function(dynamic data)? tstmsgEvent,
    TResult? Function(String? friendId, String? postId)? sharePostAsMessage,
    TResult? Function(String postId, String description, String privacy)?
        sharePost,
    TResult? Function()? resetIsEmptySharePostDescription,
  }) {
    return initalizeCommentsScreen?.call(postId, isLiked);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, bool isLiked)? initalizeCommentsScreen,
    TResult Function(String postId, String comment)? sentComment,
    TResult Function()? likePost,
    TResult Function(dynamic data)? tstmsgEvent,
    TResult Function(String? friendId, String? postId)? sharePostAsMessage,
    TResult Function(String postId, String description, String privacy)?
        sharePost,
    TResult Function()? resetIsEmptySharePostDescription,
    required TResult orElse(),
  }) {
    if (initalizeCommentsScreen != null) {
      return initalizeCommentsScreen(postId, isLiked);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeCommentScreen value)
        initalizeCommentsScreen,
    required TResult Function(_SentComment value) sentComment,
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_TestMessageEvent value) tstmsgEvent,
    required TResult Function(_SharePostAsMessage value) sharePostAsMessage,
    required TResult Function(_SharePost value) sharePost,
    required TResult Function(_ResetIsEmptySharePostDescription value)
        resetIsEmptySharePostDescription,
  }) {
    return initalizeCommentsScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult? Function(_SentComment value)? sentComment,
    TResult? Function(_LikePost value)? likePost,
    TResult? Function(_TestMessageEvent value)? tstmsgEvent,
    TResult? Function(_SharePostAsMessage value)? sharePostAsMessage,
    TResult? Function(_SharePost value)? sharePost,
    TResult? Function(_ResetIsEmptySharePostDescription value)?
        resetIsEmptySharePostDescription,
  }) {
    return initalizeCommentsScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult Function(_SentComment value)? sentComment,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_TestMessageEvent value)? tstmsgEvent,
    TResult Function(_SharePostAsMessage value)? sharePostAsMessage,
    TResult Function(_SharePost value)? sharePost,
    TResult Function(_ResetIsEmptySharePostDescription value)?
        resetIsEmptySharePostDescription,
    required TResult orElse(),
  }) {
    if (initalizeCommentsScreen != null) {
      return initalizeCommentsScreen(this);
    }
    return orElse();
  }
}

abstract class _InitializeCommentScreen implements CommentsScreenEvent {
  const factory _InitializeCommentScreen(
      {required final String postId,
      required final bool isLiked}) = _$_InitializeCommentScreen;

  String get postId;
  bool get isLiked;
  @JsonKey(ignore: true)
  _$$_InitializeCommentScreenCopyWith<_$_InitializeCommentScreen>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SentCommentCopyWith<$Res> {
  factory _$$_SentCommentCopyWith(
          _$_SentComment value, $Res Function(_$_SentComment) then) =
      __$$_SentCommentCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId, String comment});
}

/// @nodoc
class __$$_SentCommentCopyWithImpl<$Res>
    extends _$CommentsScreenEventCopyWithImpl<$Res, _$_SentComment>
    implements _$$_SentCommentCopyWith<$Res> {
  __$$_SentCommentCopyWithImpl(
      _$_SentComment _value, $Res Function(_$_SentComment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? comment = null,
  }) {
    return _then(_$_SentComment(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SentComment implements _SentComment {
  const _$_SentComment({required this.postId, required this.comment});

  @override
  final String postId;
  @override
  final String comment;

  @override
  String toString() {
    return 'CommentsScreenEvent.sentComment(postId: $postId, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SentComment &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SentCommentCopyWith<_$_SentComment> get copyWith =>
      __$$_SentCommentCopyWithImpl<_$_SentComment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, bool isLiked)
        initalizeCommentsScreen,
    required TResult Function(String postId, String comment) sentComment,
    required TResult Function() likePost,
    required TResult Function(dynamic data) tstmsgEvent,
    required TResult Function(String? friendId, String? postId)
        sharePostAsMessage,
    required TResult Function(String postId, String description, String privacy)
        sharePost,
    required TResult Function() resetIsEmptySharePostDescription,
  }) {
    return sentComment(postId, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, bool isLiked)? initalizeCommentsScreen,
    TResult? Function(String postId, String comment)? sentComment,
    TResult? Function()? likePost,
    TResult? Function(dynamic data)? tstmsgEvent,
    TResult? Function(String? friendId, String? postId)? sharePostAsMessage,
    TResult? Function(String postId, String description, String privacy)?
        sharePost,
    TResult? Function()? resetIsEmptySharePostDescription,
  }) {
    return sentComment?.call(postId, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, bool isLiked)? initalizeCommentsScreen,
    TResult Function(String postId, String comment)? sentComment,
    TResult Function()? likePost,
    TResult Function(dynamic data)? tstmsgEvent,
    TResult Function(String? friendId, String? postId)? sharePostAsMessage,
    TResult Function(String postId, String description, String privacy)?
        sharePost,
    TResult Function()? resetIsEmptySharePostDescription,
    required TResult orElse(),
  }) {
    if (sentComment != null) {
      return sentComment(postId, comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeCommentScreen value)
        initalizeCommentsScreen,
    required TResult Function(_SentComment value) sentComment,
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_TestMessageEvent value) tstmsgEvent,
    required TResult Function(_SharePostAsMessage value) sharePostAsMessage,
    required TResult Function(_SharePost value) sharePost,
    required TResult Function(_ResetIsEmptySharePostDescription value)
        resetIsEmptySharePostDescription,
  }) {
    return sentComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult? Function(_SentComment value)? sentComment,
    TResult? Function(_LikePost value)? likePost,
    TResult? Function(_TestMessageEvent value)? tstmsgEvent,
    TResult? Function(_SharePostAsMessage value)? sharePostAsMessage,
    TResult? Function(_SharePost value)? sharePost,
    TResult? Function(_ResetIsEmptySharePostDescription value)?
        resetIsEmptySharePostDescription,
  }) {
    return sentComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult Function(_SentComment value)? sentComment,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_TestMessageEvent value)? tstmsgEvent,
    TResult Function(_SharePostAsMessage value)? sharePostAsMessage,
    TResult Function(_SharePost value)? sharePost,
    TResult Function(_ResetIsEmptySharePostDescription value)?
        resetIsEmptySharePostDescription,
    required TResult orElse(),
  }) {
    if (sentComment != null) {
      return sentComment(this);
    }
    return orElse();
  }
}

abstract class _SentComment implements CommentsScreenEvent {
  const factory _SentComment(
      {required final String postId,
      required final String comment}) = _$_SentComment;

  String get postId;
  String get comment;
  @JsonKey(ignore: true)
  _$$_SentCommentCopyWith<_$_SentComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LikePostCopyWith<$Res> {
  factory _$$_LikePostCopyWith(
          _$_LikePost value, $Res Function(_$_LikePost) then) =
      __$$_LikePostCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LikePostCopyWithImpl<$Res>
    extends _$CommentsScreenEventCopyWithImpl<$Res, _$_LikePost>
    implements _$$_LikePostCopyWith<$Res> {
  __$$_LikePostCopyWithImpl(
      _$_LikePost _value, $Res Function(_$_LikePost) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LikePost implements _LikePost {
  const _$_LikePost();

  @override
  String toString() {
    return 'CommentsScreenEvent.likePost()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LikePost);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, bool isLiked)
        initalizeCommentsScreen,
    required TResult Function(String postId, String comment) sentComment,
    required TResult Function() likePost,
    required TResult Function(dynamic data) tstmsgEvent,
    required TResult Function(String? friendId, String? postId)
        sharePostAsMessage,
    required TResult Function(String postId, String description, String privacy)
        sharePost,
    required TResult Function() resetIsEmptySharePostDescription,
  }) {
    return likePost();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, bool isLiked)? initalizeCommentsScreen,
    TResult? Function(String postId, String comment)? sentComment,
    TResult? Function()? likePost,
    TResult? Function(dynamic data)? tstmsgEvent,
    TResult? Function(String? friendId, String? postId)? sharePostAsMessage,
    TResult? Function(String postId, String description, String privacy)?
        sharePost,
    TResult? Function()? resetIsEmptySharePostDescription,
  }) {
    return likePost?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, bool isLiked)? initalizeCommentsScreen,
    TResult Function(String postId, String comment)? sentComment,
    TResult Function()? likePost,
    TResult Function(dynamic data)? tstmsgEvent,
    TResult Function(String? friendId, String? postId)? sharePostAsMessage,
    TResult Function(String postId, String description, String privacy)?
        sharePost,
    TResult Function()? resetIsEmptySharePostDescription,
    required TResult orElse(),
  }) {
    if (likePost != null) {
      return likePost();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeCommentScreen value)
        initalizeCommentsScreen,
    required TResult Function(_SentComment value) sentComment,
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_TestMessageEvent value) tstmsgEvent,
    required TResult Function(_SharePostAsMessage value) sharePostAsMessage,
    required TResult Function(_SharePost value) sharePost,
    required TResult Function(_ResetIsEmptySharePostDescription value)
        resetIsEmptySharePostDescription,
  }) {
    return likePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult? Function(_SentComment value)? sentComment,
    TResult? Function(_LikePost value)? likePost,
    TResult? Function(_TestMessageEvent value)? tstmsgEvent,
    TResult? Function(_SharePostAsMessage value)? sharePostAsMessage,
    TResult? Function(_SharePost value)? sharePost,
    TResult? Function(_ResetIsEmptySharePostDescription value)?
        resetIsEmptySharePostDescription,
  }) {
    return likePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult Function(_SentComment value)? sentComment,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_TestMessageEvent value)? tstmsgEvent,
    TResult Function(_SharePostAsMessage value)? sharePostAsMessage,
    TResult Function(_SharePost value)? sharePost,
    TResult Function(_ResetIsEmptySharePostDescription value)?
        resetIsEmptySharePostDescription,
    required TResult orElse(),
  }) {
    if (likePost != null) {
      return likePost(this);
    }
    return orElse();
  }
}

abstract class _LikePost implements CommentsScreenEvent {
  const factory _LikePost() = _$_LikePost;
}

/// @nodoc
abstract class _$$_TestMessageEventCopyWith<$Res> {
  factory _$$_TestMessageEventCopyWith(
          _$_TestMessageEvent value, $Res Function(_$_TestMessageEvent) then) =
      __$$_TestMessageEventCopyWithImpl<$Res>;
  @useResult
  $Res call({dynamic data});
}

/// @nodoc
class __$$_TestMessageEventCopyWithImpl<$Res>
    extends _$CommentsScreenEventCopyWithImpl<$Res, _$_TestMessageEvent>
    implements _$$_TestMessageEventCopyWith<$Res> {
  __$$_TestMessageEventCopyWithImpl(
      _$_TestMessageEvent _value, $Res Function(_$_TestMessageEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_$_TestMessageEvent(
      freezed == data ? _value.data! : data,
    ));
  }
}

/// @nodoc

class _$_TestMessageEvent implements _TestMessageEvent {
  const _$_TestMessageEvent(this.data);

  @override
  final dynamic data;

  @override
  String toString() {
    return 'CommentsScreenEvent.tstmsgEvent(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TestMessageEvent &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TestMessageEventCopyWith<_$_TestMessageEvent> get copyWith =>
      __$$_TestMessageEventCopyWithImpl<_$_TestMessageEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, bool isLiked)
        initalizeCommentsScreen,
    required TResult Function(String postId, String comment) sentComment,
    required TResult Function() likePost,
    required TResult Function(dynamic data) tstmsgEvent,
    required TResult Function(String? friendId, String? postId)
        sharePostAsMessage,
    required TResult Function(String postId, String description, String privacy)
        sharePost,
    required TResult Function() resetIsEmptySharePostDescription,
  }) {
    return tstmsgEvent(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, bool isLiked)? initalizeCommentsScreen,
    TResult? Function(String postId, String comment)? sentComment,
    TResult? Function()? likePost,
    TResult? Function(dynamic data)? tstmsgEvent,
    TResult? Function(String? friendId, String? postId)? sharePostAsMessage,
    TResult? Function(String postId, String description, String privacy)?
        sharePost,
    TResult? Function()? resetIsEmptySharePostDescription,
  }) {
    return tstmsgEvent?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, bool isLiked)? initalizeCommentsScreen,
    TResult Function(String postId, String comment)? sentComment,
    TResult Function()? likePost,
    TResult Function(dynamic data)? tstmsgEvent,
    TResult Function(String? friendId, String? postId)? sharePostAsMessage,
    TResult Function(String postId, String description, String privacy)?
        sharePost,
    TResult Function()? resetIsEmptySharePostDescription,
    required TResult orElse(),
  }) {
    if (tstmsgEvent != null) {
      return tstmsgEvent(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeCommentScreen value)
        initalizeCommentsScreen,
    required TResult Function(_SentComment value) sentComment,
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_TestMessageEvent value) tstmsgEvent,
    required TResult Function(_SharePostAsMessage value) sharePostAsMessage,
    required TResult Function(_SharePost value) sharePost,
    required TResult Function(_ResetIsEmptySharePostDescription value)
        resetIsEmptySharePostDescription,
  }) {
    return tstmsgEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult? Function(_SentComment value)? sentComment,
    TResult? Function(_LikePost value)? likePost,
    TResult? Function(_TestMessageEvent value)? tstmsgEvent,
    TResult? Function(_SharePostAsMessage value)? sharePostAsMessage,
    TResult? Function(_SharePost value)? sharePost,
    TResult? Function(_ResetIsEmptySharePostDescription value)?
        resetIsEmptySharePostDescription,
  }) {
    return tstmsgEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult Function(_SentComment value)? sentComment,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_TestMessageEvent value)? tstmsgEvent,
    TResult Function(_SharePostAsMessage value)? sharePostAsMessage,
    TResult Function(_SharePost value)? sharePost,
    TResult Function(_ResetIsEmptySharePostDescription value)?
        resetIsEmptySharePostDescription,
    required TResult orElse(),
  }) {
    if (tstmsgEvent != null) {
      return tstmsgEvent(this);
    }
    return orElse();
  }
}

abstract class _TestMessageEvent implements CommentsScreenEvent {
  const factory _TestMessageEvent(final dynamic data) = _$_TestMessageEvent;

  dynamic get data;
  @JsonKey(ignore: true)
  _$$_TestMessageEventCopyWith<_$_TestMessageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SharePostAsMessageCopyWith<$Res> {
  factory _$$_SharePostAsMessageCopyWith(_$_SharePostAsMessage value,
          $Res Function(_$_SharePostAsMessage) then) =
      __$$_SharePostAsMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({String? friendId, String? postId});
}

/// @nodoc
class __$$_SharePostAsMessageCopyWithImpl<$Res>
    extends _$CommentsScreenEventCopyWithImpl<$Res, _$_SharePostAsMessage>
    implements _$$_SharePostAsMessageCopyWith<$Res> {
  __$$_SharePostAsMessageCopyWithImpl(
      _$_SharePostAsMessage _value, $Res Function(_$_SharePostAsMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friendId = freezed,
    Object? postId = freezed,
  }) {
    return _then(_$_SharePostAsMessage(
      friendId: freezed == friendId
          ? _value.friendId
          : friendId // ignore: cast_nullable_to_non_nullable
              as String?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SharePostAsMessage implements _SharePostAsMessage {
  const _$_SharePostAsMessage({required this.friendId, required this.postId});

  @override
  final String? friendId;
  @override
  final String? postId;

  @override
  String toString() {
    return 'CommentsScreenEvent.sharePostAsMessage(friendId: $friendId, postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharePostAsMessage &&
            (identical(other.friendId, friendId) ||
                other.friendId == friendId) &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, friendId, postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SharePostAsMessageCopyWith<_$_SharePostAsMessage> get copyWith =>
      __$$_SharePostAsMessageCopyWithImpl<_$_SharePostAsMessage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, bool isLiked)
        initalizeCommentsScreen,
    required TResult Function(String postId, String comment) sentComment,
    required TResult Function() likePost,
    required TResult Function(dynamic data) tstmsgEvent,
    required TResult Function(String? friendId, String? postId)
        sharePostAsMessage,
    required TResult Function(String postId, String description, String privacy)
        sharePost,
    required TResult Function() resetIsEmptySharePostDescription,
  }) {
    return sharePostAsMessage(friendId, postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, bool isLiked)? initalizeCommentsScreen,
    TResult? Function(String postId, String comment)? sentComment,
    TResult? Function()? likePost,
    TResult? Function(dynamic data)? tstmsgEvent,
    TResult? Function(String? friendId, String? postId)? sharePostAsMessage,
    TResult? Function(String postId, String description, String privacy)?
        sharePost,
    TResult? Function()? resetIsEmptySharePostDescription,
  }) {
    return sharePostAsMessage?.call(friendId, postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, bool isLiked)? initalizeCommentsScreen,
    TResult Function(String postId, String comment)? sentComment,
    TResult Function()? likePost,
    TResult Function(dynamic data)? tstmsgEvent,
    TResult Function(String? friendId, String? postId)? sharePostAsMessage,
    TResult Function(String postId, String description, String privacy)?
        sharePost,
    TResult Function()? resetIsEmptySharePostDescription,
    required TResult orElse(),
  }) {
    if (sharePostAsMessage != null) {
      return sharePostAsMessage(friendId, postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeCommentScreen value)
        initalizeCommentsScreen,
    required TResult Function(_SentComment value) sentComment,
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_TestMessageEvent value) tstmsgEvent,
    required TResult Function(_SharePostAsMessage value) sharePostAsMessage,
    required TResult Function(_SharePost value) sharePost,
    required TResult Function(_ResetIsEmptySharePostDescription value)
        resetIsEmptySharePostDescription,
  }) {
    return sharePostAsMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult? Function(_SentComment value)? sentComment,
    TResult? Function(_LikePost value)? likePost,
    TResult? Function(_TestMessageEvent value)? tstmsgEvent,
    TResult? Function(_SharePostAsMessage value)? sharePostAsMessage,
    TResult? Function(_SharePost value)? sharePost,
    TResult? Function(_ResetIsEmptySharePostDescription value)?
        resetIsEmptySharePostDescription,
  }) {
    return sharePostAsMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult Function(_SentComment value)? sentComment,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_TestMessageEvent value)? tstmsgEvent,
    TResult Function(_SharePostAsMessage value)? sharePostAsMessage,
    TResult Function(_SharePost value)? sharePost,
    TResult Function(_ResetIsEmptySharePostDescription value)?
        resetIsEmptySharePostDescription,
    required TResult orElse(),
  }) {
    if (sharePostAsMessage != null) {
      return sharePostAsMessage(this);
    }
    return orElse();
  }
}

abstract class _SharePostAsMessage implements CommentsScreenEvent {
  const factory _SharePostAsMessage(
      {required final String? friendId,
      required final String? postId}) = _$_SharePostAsMessage;

  String? get friendId;
  String? get postId;
  @JsonKey(ignore: true)
  _$$_SharePostAsMessageCopyWith<_$_SharePostAsMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SharePostCopyWith<$Res> {
  factory _$$_SharePostCopyWith(
          _$_SharePost value, $Res Function(_$_SharePost) then) =
      __$$_SharePostCopyWithImpl<$Res>;
  @useResult
  $Res call({String postId, String description, String privacy});
}

/// @nodoc
class __$$_SharePostCopyWithImpl<$Res>
    extends _$CommentsScreenEventCopyWithImpl<$Res, _$_SharePost>
    implements _$$_SharePostCopyWith<$Res> {
  __$$_SharePostCopyWithImpl(
      _$_SharePost _value, $Res Function(_$_SharePost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
    Object? description = null,
    Object? privacy = null,
  }) {
    return _then(_$_SharePost(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      privacy: null == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SharePost implements _SharePost {
  const _$_SharePost(
      {required this.postId, required this.description, required this.privacy});

  @override
  final String postId;
  @override
  final String description;
  @override
  final String privacy;

  @override
  String toString() {
    return 'CommentsScreenEvent.sharePost(postId: $postId, description: $description, privacy: $privacy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharePost &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.privacy, privacy) || other.privacy == privacy));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId, description, privacy);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SharePostCopyWith<_$_SharePost> get copyWith =>
      __$$_SharePostCopyWithImpl<_$_SharePost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, bool isLiked)
        initalizeCommentsScreen,
    required TResult Function(String postId, String comment) sentComment,
    required TResult Function() likePost,
    required TResult Function(dynamic data) tstmsgEvent,
    required TResult Function(String? friendId, String? postId)
        sharePostAsMessage,
    required TResult Function(String postId, String description, String privacy)
        sharePost,
    required TResult Function() resetIsEmptySharePostDescription,
  }) {
    return sharePost(postId, description, privacy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, bool isLiked)? initalizeCommentsScreen,
    TResult? Function(String postId, String comment)? sentComment,
    TResult? Function()? likePost,
    TResult? Function(dynamic data)? tstmsgEvent,
    TResult? Function(String? friendId, String? postId)? sharePostAsMessage,
    TResult? Function(String postId, String description, String privacy)?
        sharePost,
    TResult? Function()? resetIsEmptySharePostDescription,
  }) {
    return sharePost?.call(postId, description, privacy);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, bool isLiked)? initalizeCommentsScreen,
    TResult Function(String postId, String comment)? sentComment,
    TResult Function()? likePost,
    TResult Function(dynamic data)? tstmsgEvent,
    TResult Function(String? friendId, String? postId)? sharePostAsMessage,
    TResult Function(String postId, String description, String privacy)?
        sharePost,
    TResult Function()? resetIsEmptySharePostDescription,
    required TResult orElse(),
  }) {
    if (sharePost != null) {
      return sharePost(postId, description, privacy);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeCommentScreen value)
        initalizeCommentsScreen,
    required TResult Function(_SentComment value) sentComment,
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_TestMessageEvent value) tstmsgEvent,
    required TResult Function(_SharePostAsMessage value) sharePostAsMessage,
    required TResult Function(_SharePost value) sharePost,
    required TResult Function(_ResetIsEmptySharePostDescription value)
        resetIsEmptySharePostDescription,
  }) {
    return sharePost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult? Function(_SentComment value)? sentComment,
    TResult? Function(_LikePost value)? likePost,
    TResult? Function(_TestMessageEvent value)? tstmsgEvent,
    TResult? Function(_SharePostAsMessage value)? sharePostAsMessage,
    TResult? Function(_SharePost value)? sharePost,
    TResult? Function(_ResetIsEmptySharePostDescription value)?
        resetIsEmptySharePostDescription,
  }) {
    return sharePost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult Function(_SentComment value)? sentComment,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_TestMessageEvent value)? tstmsgEvent,
    TResult Function(_SharePostAsMessage value)? sharePostAsMessage,
    TResult Function(_SharePost value)? sharePost,
    TResult Function(_ResetIsEmptySharePostDescription value)?
        resetIsEmptySharePostDescription,
    required TResult orElse(),
  }) {
    if (sharePost != null) {
      return sharePost(this);
    }
    return orElse();
  }
}

abstract class _SharePost implements CommentsScreenEvent {
  const factory _SharePost(
      {required final String postId,
      required final String description,
      required final String privacy}) = _$_SharePost;

  String get postId;
  String get description;
  String get privacy;
  @JsonKey(ignore: true)
  _$$_SharePostCopyWith<_$_SharePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ResetIsEmptySharePostDescriptionCopyWith<$Res> {
  factory _$$_ResetIsEmptySharePostDescriptionCopyWith(
          _$_ResetIsEmptySharePostDescription value,
          $Res Function(_$_ResetIsEmptySharePostDescription) then) =
      __$$_ResetIsEmptySharePostDescriptionCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ResetIsEmptySharePostDescriptionCopyWithImpl<$Res>
    extends _$CommentsScreenEventCopyWithImpl<$Res,
        _$_ResetIsEmptySharePostDescription>
    implements _$$_ResetIsEmptySharePostDescriptionCopyWith<$Res> {
  __$$_ResetIsEmptySharePostDescriptionCopyWithImpl(
      _$_ResetIsEmptySharePostDescription _value,
      $Res Function(_$_ResetIsEmptySharePostDescription) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ResetIsEmptySharePostDescription
    implements _ResetIsEmptySharePostDescription {
  const _$_ResetIsEmptySharePostDescription();

  @override
  String toString() {
    return 'CommentsScreenEvent.resetIsEmptySharePostDescription()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ResetIsEmptySharePostDescription);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId, bool isLiked)
        initalizeCommentsScreen,
    required TResult Function(String postId, String comment) sentComment,
    required TResult Function() likePost,
    required TResult Function(dynamic data) tstmsgEvent,
    required TResult Function(String? friendId, String? postId)
        sharePostAsMessage,
    required TResult Function(String postId, String description, String privacy)
        sharePost,
    required TResult Function() resetIsEmptySharePostDescription,
  }) {
    return resetIsEmptySharePostDescription();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId, bool isLiked)? initalizeCommentsScreen,
    TResult? Function(String postId, String comment)? sentComment,
    TResult? Function()? likePost,
    TResult? Function(dynamic data)? tstmsgEvent,
    TResult? Function(String? friendId, String? postId)? sharePostAsMessage,
    TResult? Function(String postId, String description, String privacy)?
        sharePost,
    TResult? Function()? resetIsEmptySharePostDescription,
  }) {
    return resetIsEmptySharePostDescription?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId, bool isLiked)? initalizeCommentsScreen,
    TResult Function(String postId, String comment)? sentComment,
    TResult Function()? likePost,
    TResult Function(dynamic data)? tstmsgEvent,
    TResult Function(String? friendId, String? postId)? sharePostAsMessage,
    TResult Function(String postId, String description, String privacy)?
        sharePost,
    TResult Function()? resetIsEmptySharePostDescription,
    required TResult orElse(),
  }) {
    if (resetIsEmptySharePostDescription != null) {
      return resetIsEmptySharePostDescription();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeCommentScreen value)
        initalizeCommentsScreen,
    required TResult Function(_SentComment value) sentComment,
    required TResult Function(_LikePost value) likePost,
    required TResult Function(_TestMessageEvent value) tstmsgEvent,
    required TResult Function(_SharePostAsMessage value) sharePostAsMessage,
    required TResult Function(_SharePost value) sharePost,
    required TResult Function(_ResetIsEmptySharePostDescription value)
        resetIsEmptySharePostDescription,
  }) {
    return resetIsEmptySharePostDescription(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult? Function(_SentComment value)? sentComment,
    TResult? Function(_LikePost value)? likePost,
    TResult? Function(_TestMessageEvent value)? tstmsgEvent,
    TResult? Function(_SharePostAsMessage value)? sharePostAsMessage,
    TResult? Function(_SharePost value)? sharePost,
    TResult? Function(_ResetIsEmptySharePostDescription value)?
        resetIsEmptySharePostDescription,
  }) {
    return resetIsEmptySharePostDescription?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult Function(_SentComment value)? sentComment,
    TResult Function(_LikePost value)? likePost,
    TResult Function(_TestMessageEvent value)? tstmsgEvent,
    TResult Function(_SharePostAsMessage value)? sharePostAsMessage,
    TResult Function(_SharePost value)? sharePost,
    TResult Function(_ResetIsEmptySharePostDescription value)?
        resetIsEmptySharePostDescription,
    required TResult orElse(),
  }) {
    if (resetIsEmptySharePostDescription != null) {
      return resetIsEmptySharePostDescription(this);
    }
    return orElse();
  }
}

abstract class _ResetIsEmptySharePostDescription
    implements CommentsScreenEvent {
  const factory _ResetIsEmptySharePostDescription() =
      _$_ResetIsEmptySharePostDescription;
}

/// @nodoc
mixin _$CommentsScreenState {
  String? get showMessage => throw _privateConstructorUsedError;
  bool get isScreenLoading => throw _privateConstructorUsedError;
  bool get isFrontendValidationSuccess => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isUploadCommentSuccess => throw _privateConstructorUsedError;
  bool get isImageLoading => throw _privateConstructorUsedError;
  String? get postImageUrl => throw _privateConstructorUsedError;
  List<LoadCommentsResponseModel?>? get loadCommentsResponse =>
      throw _privateConstructorUsedError;
  bool? get isSharePostDescriptionEmpty => throw _privateConstructorUsedError;
  String? get postId => throw _privateConstructorUsedError;
  bool? get isLiked => throw _privateConstructorUsedError;
  List<GetAllConversationsResponseModel>? get getAllConversationsResponseList =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? showMessage,
            bool isScreenLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isUploadCommentSuccess,
            bool isImageLoading,
            String? postImageUrl,
            List<LoadCommentsResponseModel?>? loadCommentsResponse,
            bool? isSharePostDescriptionEmpty,
            String? postId,
            bool? isLiked,
            List<GetAllConversationsResponseModel>?
                getAllConversationsResponseList)
        current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? showMessage,
            bool isScreenLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isUploadCommentSuccess,
            bool isImageLoading,
            String? postImageUrl,
            List<LoadCommentsResponseModel?>? loadCommentsResponse,
            bool? isSharePostDescriptionEmpty,
            String? postId,
            bool? isLiked,
            List<GetAllConversationsResponseModel>?
                getAllConversationsResponseList)?
        current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? showMessage,
            bool isScreenLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isUploadCommentSuccess,
            bool isImageLoading,
            String? postImageUrl,
            List<LoadCommentsResponseModel?>? loadCommentsResponse,
            bool? isSharePostDescriptionEmpty,
            String? postId,
            bool? isLiked,
            List<GetAllConversationsResponseModel>?
                getAllConversationsResponseList)?
        current,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Current value) current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Current value)? current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Current value)? current,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentsScreenStateCopyWith<CommentsScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsScreenStateCopyWith<$Res> {
  factory $CommentsScreenStateCopyWith(
          CommentsScreenState value, $Res Function(CommentsScreenState) then) =
      _$CommentsScreenStateCopyWithImpl<$Res, CommentsScreenState>;
  @useResult
  $Res call(
      {String? showMessage,
      bool isScreenLoading,
      bool isFrontendValidationSuccess,
      String? errorMessage,
      bool isUploadCommentSuccess,
      bool isImageLoading,
      String? postImageUrl,
      List<LoadCommentsResponseModel?>? loadCommentsResponse,
      bool? isSharePostDescriptionEmpty,
      String? postId,
      bool? isLiked,
      List<GetAllConversationsResponseModel>? getAllConversationsResponseList});
}

/// @nodoc
class _$CommentsScreenStateCopyWithImpl<$Res, $Val extends CommentsScreenState>
    implements $CommentsScreenStateCopyWith<$Res> {
  _$CommentsScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showMessage = freezed,
    Object? isScreenLoading = null,
    Object? isFrontendValidationSuccess = null,
    Object? errorMessage = freezed,
    Object? isUploadCommentSuccess = null,
    Object? isImageLoading = null,
    Object? postImageUrl = freezed,
    Object? loadCommentsResponse = freezed,
    Object? isSharePostDescriptionEmpty = freezed,
    Object? postId = freezed,
    Object? isLiked = freezed,
    Object? getAllConversationsResponseList = freezed,
  }) {
    return _then(_value.copyWith(
      showMessage: freezed == showMessage
          ? _value.showMessage
          : showMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isScreenLoading: null == isScreenLoading
          ? _value.isScreenLoading
          : isScreenLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFrontendValidationSuccess: null == isFrontendValidationSuccess
          ? _value.isFrontendValidationSuccess
          : isFrontendValidationSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isUploadCommentSuccess: null == isUploadCommentSuccess
          ? _value.isUploadCommentSuccess
          : isUploadCommentSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isImageLoading: null == isImageLoading
          ? _value.isImageLoading
          : isImageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      postImageUrl: freezed == postImageUrl
          ? _value.postImageUrl
          : postImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      loadCommentsResponse: freezed == loadCommentsResponse
          ? _value.loadCommentsResponse
          : loadCommentsResponse // ignore: cast_nullable_to_non_nullable
              as List<LoadCommentsResponseModel?>?,
      isSharePostDescriptionEmpty: freezed == isSharePostDescriptionEmpty
          ? _value.isSharePostDescriptionEmpty
          : isSharePostDescriptionEmpty // ignore: cast_nullable_to_non_nullable
              as bool?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      getAllConversationsResponseList: freezed ==
              getAllConversationsResponseList
          ? _value.getAllConversationsResponseList
          : getAllConversationsResponseList // ignore: cast_nullable_to_non_nullable
              as List<GetAllConversationsResponseModel>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentCopyWith<$Res>
    implements $CommentsScreenStateCopyWith<$Res> {
  factory _$$_CurrentCopyWith(
          _$_Current value, $Res Function(_$_Current) then) =
      __$$_CurrentCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? showMessage,
      bool isScreenLoading,
      bool isFrontendValidationSuccess,
      String? errorMessage,
      bool isUploadCommentSuccess,
      bool isImageLoading,
      String? postImageUrl,
      List<LoadCommentsResponseModel?>? loadCommentsResponse,
      bool? isSharePostDescriptionEmpty,
      String? postId,
      bool? isLiked,
      List<GetAllConversationsResponseModel>? getAllConversationsResponseList});
}

/// @nodoc
class __$$_CurrentCopyWithImpl<$Res>
    extends _$CommentsScreenStateCopyWithImpl<$Res, _$_Current>
    implements _$$_CurrentCopyWith<$Res> {
  __$$_CurrentCopyWithImpl(_$_Current _value, $Res Function(_$_Current) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? showMessage = freezed,
    Object? isScreenLoading = null,
    Object? isFrontendValidationSuccess = null,
    Object? errorMessage = freezed,
    Object? isUploadCommentSuccess = null,
    Object? isImageLoading = null,
    Object? postImageUrl = freezed,
    Object? loadCommentsResponse = freezed,
    Object? isSharePostDescriptionEmpty = freezed,
    Object? postId = freezed,
    Object? isLiked = freezed,
    Object? getAllConversationsResponseList = freezed,
  }) {
    return _then(_$_Current(
      showMessage: freezed == showMessage
          ? _value.showMessage
          : showMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isScreenLoading: null == isScreenLoading
          ? _value.isScreenLoading
          : isScreenLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFrontendValidationSuccess: null == isFrontendValidationSuccess
          ? _value.isFrontendValidationSuccess
          : isFrontendValidationSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isUploadCommentSuccess: null == isUploadCommentSuccess
          ? _value.isUploadCommentSuccess
          : isUploadCommentSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isImageLoading: null == isImageLoading
          ? _value.isImageLoading
          : isImageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      postImageUrl: freezed == postImageUrl
          ? _value.postImageUrl
          : postImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      loadCommentsResponse: freezed == loadCommentsResponse
          ? _value._loadCommentsResponse
          : loadCommentsResponse // ignore: cast_nullable_to_non_nullable
              as List<LoadCommentsResponseModel?>?,
      isSharePostDescriptionEmpty: freezed == isSharePostDescriptionEmpty
          ? _value.isSharePostDescriptionEmpty
          : isSharePostDescriptionEmpty // ignore: cast_nullable_to_non_nullable
              as bool?,
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
      isLiked: freezed == isLiked
          ? _value.isLiked
          : isLiked // ignore: cast_nullable_to_non_nullable
              as bool?,
      getAllConversationsResponseList: freezed ==
              getAllConversationsResponseList
          ? _value._getAllConversationsResponseList
          : getAllConversationsResponseList // ignore: cast_nullable_to_non_nullable
              as List<GetAllConversationsResponseModel>?,
    ));
  }
}

/// @nodoc

class _$_Current implements _Current {
  const _$_Current(
      {this.showMessage,
      required this.isScreenLoading,
      required this.isFrontendValidationSuccess,
      this.errorMessage,
      required this.isUploadCommentSuccess,
      required this.isImageLoading,
      this.postImageUrl,
      final List<LoadCommentsResponseModel?>? loadCommentsResponse,
      this.isSharePostDescriptionEmpty,
      this.postId,
      this.isLiked,
      final List<GetAllConversationsResponseModel>?
          getAllConversationsResponseList})
      : _loadCommentsResponse = loadCommentsResponse,
        _getAllConversationsResponseList = getAllConversationsResponseList;

  @override
  final String? showMessage;
  @override
  final bool isScreenLoading;
  @override
  final bool isFrontendValidationSuccess;
  @override
  final String? errorMessage;
  @override
  final bool isUploadCommentSuccess;
  @override
  final bool isImageLoading;
  @override
  final String? postImageUrl;
  final List<LoadCommentsResponseModel?>? _loadCommentsResponse;
  @override
  List<LoadCommentsResponseModel?>? get loadCommentsResponse {
    final value = _loadCommentsResponse;
    if (value == null) return null;
    if (_loadCommentsResponse is EqualUnmodifiableListView)
      return _loadCommentsResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final bool? isSharePostDescriptionEmpty;
  @override
  final String? postId;
  @override
  final bool? isLiked;
  final List<GetAllConversationsResponseModel>?
      _getAllConversationsResponseList;
  @override
  List<GetAllConversationsResponseModel>? get getAllConversationsResponseList {
    final value = _getAllConversationsResponseList;
    if (value == null) return null;
    if (_getAllConversationsResponseList is EqualUnmodifiableListView)
      return _getAllConversationsResponseList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CommentsScreenState.current(showMessage: $showMessage, isScreenLoading: $isScreenLoading, isFrontendValidationSuccess: $isFrontendValidationSuccess, errorMessage: $errorMessage, isUploadCommentSuccess: $isUploadCommentSuccess, isImageLoading: $isImageLoading, postImageUrl: $postImageUrl, loadCommentsResponse: $loadCommentsResponse, isSharePostDescriptionEmpty: $isSharePostDescriptionEmpty, postId: $postId, isLiked: $isLiked, getAllConversationsResponseList: $getAllConversationsResponseList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Current &&
            (identical(other.showMessage, showMessage) ||
                other.showMessage == showMessage) &&
            (identical(other.isScreenLoading, isScreenLoading) ||
                other.isScreenLoading == isScreenLoading) &&
            (identical(other.isFrontendValidationSuccess,
                    isFrontendValidationSuccess) ||
                other.isFrontendValidationSuccess ==
                    isFrontendValidationSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isUploadCommentSuccess, isUploadCommentSuccess) ||
                other.isUploadCommentSuccess == isUploadCommentSuccess) &&
            (identical(other.isImageLoading, isImageLoading) ||
                other.isImageLoading == isImageLoading) &&
            (identical(other.postImageUrl, postImageUrl) ||
                other.postImageUrl == postImageUrl) &&
            const DeepCollectionEquality()
                .equals(other._loadCommentsResponse, _loadCommentsResponse) &&
            (identical(other.isSharePostDescriptionEmpty,
                    isSharePostDescriptionEmpty) ||
                other.isSharePostDescriptionEmpty ==
                    isSharePostDescriptionEmpty) &&
            (identical(other.postId, postId) || other.postId == postId) &&
            (identical(other.isLiked, isLiked) || other.isLiked == isLiked) &&
            const DeepCollectionEquality().equals(
                other._getAllConversationsResponseList,
                _getAllConversationsResponseList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      showMessage,
      isScreenLoading,
      isFrontendValidationSuccess,
      errorMessage,
      isUploadCommentSuccess,
      isImageLoading,
      postImageUrl,
      const DeepCollectionEquality().hash(_loadCommentsResponse),
      isSharePostDescriptionEmpty,
      postId,
      isLiked,
      const DeepCollectionEquality().hash(_getAllConversationsResponseList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentCopyWith<_$_Current> get copyWith =>
      __$$_CurrentCopyWithImpl<_$_Current>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String? showMessage,
            bool isScreenLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isUploadCommentSuccess,
            bool isImageLoading,
            String? postImageUrl,
            List<LoadCommentsResponseModel?>? loadCommentsResponse,
            bool? isSharePostDescriptionEmpty,
            String? postId,
            bool? isLiked,
            List<GetAllConversationsResponseModel>?
                getAllConversationsResponseList)
        current,
  }) {
    return current(
        showMessage,
        isScreenLoading,
        isFrontendValidationSuccess,
        errorMessage,
        isUploadCommentSuccess,
        isImageLoading,
        postImageUrl,
        loadCommentsResponse,
        isSharePostDescriptionEmpty,
        postId,
        isLiked,
        getAllConversationsResponseList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String? showMessage,
            bool isScreenLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isUploadCommentSuccess,
            bool isImageLoading,
            String? postImageUrl,
            List<LoadCommentsResponseModel?>? loadCommentsResponse,
            bool? isSharePostDescriptionEmpty,
            String? postId,
            bool? isLiked,
            List<GetAllConversationsResponseModel>?
                getAllConversationsResponseList)?
        current,
  }) {
    return current?.call(
        showMessage,
        isScreenLoading,
        isFrontendValidationSuccess,
        errorMessage,
        isUploadCommentSuccess,
        isImageLoading,
        postImageUrl,
        loadCommentsResponse,
        isSharePostDescriptionEmpty,
        postId,
        isLiked,
        getAllConversationsResponseList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String? showMessage,
            bool isScreenLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isUploadCommentSuccess,
            bool isImageLoading,
            String? postImageUrl,
            List<LoadCommentsResponseModel?>? loadCommentsResponse,
            bool? isSharePostDescriptionEmpty,
            String? postId,
            bool? isLiked,
            List<GetAllConversationsResponseModel>?
                getAllConversationsResponseList)?
        current,
    required TResult orElse(),
  }) {
    if (current != null) {
      return current(
          showMessage,
          isScreenLoading,
          isFrontendValidationSuccess,
          errorMessage,
          isUploadCommentSuccess,
          isImageLoading,
          postImageUrl,
          loadCommentsResponse,
          isSharePostDescriptionEmpty,
          postId,
          isLiked,
          getAllConversationsResponseList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Current value) current,
  }) {
    return current(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Current value)? current,
  }) {
    return current?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Current value)? current,
    required TResult orElse(),
  }) {
    if (current != null) {
      return current(this);
    }
    return orElse();
  }
}

abstract class _Current implements CommentsScreenState {
  const factory _Current(
      {final String? showMessage,
      required final bool isScreenLoading,
      required final bool isFrontendValidationSuccess,
      final String? errorMessage,
      required final bool isUploadCommentSuccess,
      required final bool isImageLoading,
      final String? postImageUrl,
      final List<LoadCommentsResponseModel?>? loadCommentsResponse,
      final bool? isSharePostDescriptionEmpty,
      final String? postId,
      final bool? isLiked,
      final List<GetAllConversationsResponseModel>?
          getAllConversationsResponseList}) = _$_Current;

  @override
  String? get showMessage;
  @override
  bool get isScreenLoading;
  @override
  bool get isFrontendValidationSuccess;
  @override
  String? get errorMessage;
  @override
  bool get isUploadCommentSuccess;
  @override
  bool get isImageLoading;
  @override
  String? get postImageUrl;
  @override
  List<LoadCommentsResponseModel?>? get loadCommentsResponse;
  @override
  bool? get isSharePostDescriptionEmpty;
  @override
  String? get postId;
  @override
  bool? get isLiked;
  @override
  List<GetAllConversationsResponseModel>? get getAllConversationsResponseList;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentCopyWith<_$_Current> get copyWith =>
      throw _privateConstructorUsedError;
}
