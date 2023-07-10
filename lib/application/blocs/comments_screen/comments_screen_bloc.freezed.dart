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
  String get postId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String postId) initalizeCommentsScreen,
    required TResult Function(String postId, String comment) sentComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId)? initalizeCommentsScreen,
    TResult? Function(String postId, String comment)? sentComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId)? initalizeCommentsScreen,
    TResult Function(String postId, String comment)? sentComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeCommentScreen value)
        initalizeCommentsScreen,
    required TResult Function(_SentComment value) sentComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult? Function(_SentComment value)? sentComment,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult Function(_SentComment value)? sentComment,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentsScreenEventCopyWith<CommentsScreenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsScreenEventCopyWith<$Res> {
  factory $CommentsScreenEventCopyWith(
          CommentsScreenEvent value, $Res Function(CommentsScreenEvent) then) =
      _$CommentsScreenEventCopyWithImpl<$Res, CommentsScreenEvent>;
  @useResult
  $Res call({String postId});
}

/// @nodoc
class _$CommentsScreenEventCopyWithImpl<$Res, $Val extends CommentsScreenEvent>
    implements $CommentsScreenEventCopyWith<$Res> {
  _$CommentsScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? postId = null,
  }) {
    return _then(_value.copyWith(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitializeCommentScreenCopyWith<$Res>
    implements $CommentsScreenEventCopyWith<$Res> {
  factory _$$_InitializeCommentScreenCopyWith(_$_InitializeCommentScreen value,
          $Res Function(_$_InitializeCommentScreen) then) =
      __$$_InitializeCommentScreenCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String postId});
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
  }) {
    return _then(_$_InitializeCommentScreen(
      postId: null == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitializeCommentScreen implements _InitializeCommentScreen {
  const _$_InitializeCommentScreen({required this.postId});

  @override
  final String postId;

  @override
  String toString() {
    return 'CommentsScreenEvent.initalizeCommentsScreen(postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitializeCommentScreen &&
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, postId);

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
    required TResult Function(String postId) initalizeCommentsScreen,
    required TResult Function(String postId, String comment) sentComment,
  }) {
    return initalizeCommentsScreen(postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId)? initalizeCommentsScreen,
    TResult? Function(String postId, String comment)? sentComment,
  }) {
    return initalizeCommentsScreen?.call(postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId)? initalizeCommentsScreen,
    TResult Function(String postId, String comment)? sentComment,
    required TResult orElse(),
  }) {
    if (initalizeCommentsScreen != null) {
      return initalizeCommentsScreen(postId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeCommentScreen value)
        initalizeCommentsScreen,
    required TResult Function(_SentComment value) sentComment,
  }) {
    return initalizeCommentsScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult? Function(_SentComment value)? sentComment,
  }) {
    return initalizeCommentsScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult Function(_SentComment value)? sentComment,
    required TResult orElse(),
  }) {
    if (initalizeCommentsScreen != null) {
      return initalizeCommentsScreen(this);
    }
    return orElse();
  }
}

abstract class _InitializeCommentScreen implements CommentsScreenEvent {
  const factory _InitializeCommentScreen({required final String postId}) =
      _$_InitializeCommentScreen;

  @override
  String get postId;
  @override
  @JsonKey(ignore: true)
  _$$_InitializeCommentScreenCopyWith<_$_InitializeCommentScreen>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SentCommentCopyWith<$Res>
    implements $CommentsScreenEventCopyWith<$Res> {
  factory _$$_SentCommentCopyWith(
          _$_SentComment value, $Res Function(_$_SentComment) then) =
      __$$_SentCommentCopyWithImpl<$Res>;
  @override
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
    required TResult Function(String postId) initalizeCommentsScreen,
    required TResult Function(String postId, String comment) sentComment,
  }) {
    return sentComment(postId, comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String postId)? initalizeCommentsScreen,
    TResult? Function(String postId, String comment)? sentComment,
  }) {
    return sentComment?.call(postId, comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String postId)? initalizeCommentsScreen,
    TResult Function(String postId, String comment)? sentComment,
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
  }) {
    return sentComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult? Function(_SentComment value)? sentComment,
  }) {
    return sentComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeCommentScreen value)? initalizeCommentsScreen,
    TResult Function(_SentComment value)? sentComment,
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

  @override
  String get postId;
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$_SentCommentCopyWith<_$_SentComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommentsScreenState {
  bool get isScreenLoading => throw _privateConstructorUsedError;
  bool get isFrontendValidationSuccess => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isUploadCommentSuccess => throw _privateConstructorUsedError;
  bool get isImageLoading => throw _privateConstructorUsedError;
  String? get postImageUrl => throw _privateConstructorUsedError;
  List<LoadCommentsResponseModel?>? get loadCommentsResponse =>
      throw _privateConstructorUsedError;
  String? get postId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isScreenLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isUploadCommentSuccess,
            bool isImageLoading,
            String? postImageUrl,
            List<LoadCommentsResponseModel?>? loadCommentsResponse,
            String? postId)
        current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isScreenLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isUploadCommentSuccess,
            bool isImageLoading,
            String? postImageUrl,
            List<LoadCommentsResponseModel?>? loadCommentsResponse,
            String? postId)?
        current,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isScreenLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isUploadCommentSuccess,
            bool isImageLoading,
            String? postImageUrl,
            List<LoadCommentsResponseModel?>? loadCommentsResponse,
            String? postId)?
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
      {bool isScreenLoading,
      bool isFrontendValidationSuccess,
      String? errorMessage,
      bool isUploadCommentSuccess,
      bool isImageLoading,
      String? postImageUrl,
      List<LoadCommentsResponseModel?>? loadCommentsResponse,
      String? postId});
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
    Object? isScreenLoading = null,
    Object? isFrontendValidationSuccess = null,
    Object? errorMessage = freezed,
    Object? isUploadCommentSuccess = null,
    Object? isImageLoading = null,
    Object? postImageUrl = freezed,
    Object? loadCommentsResponse = freezed,
    Object? postId = freezed,
  }) {
    return _then(_value.copyWith(
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
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
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
      {bool isScreenLoading,
      bool isFrontendValidationSuccess,
      String? errorMessage,
      bool isUploadCommentSuccess,
      bool isImageLoading,
      String? postImageUrl,
      List<LoadCommentsResponseModel?>? loadCommentsResponse,
      String? postId});
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
    Object? isScreenLoading = null,
    Object? isFrontendValidationSuccess = null,
    Object? errorMessage = freezed,
    Object? isUploadCommentSuccess = null,
    Object? isImageLoading = null,
    Object? postImageUrl = freezed,
    Object? loadCommentsResponse = freezed,
    Object? postId = freezed,
  }) {
    return _then(_$_Current(
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
      postId: freezed == postId
          ? _value.postId
          : postId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Current implements _Current {
  const _$_Current(
      {required this.isScreenLoading,
      required this.isFrontendValidationSuccess,
      this.errorMessage,
      required this.isUploadCommentSuccess,
      required this.isImageLoading,
      this.postImageUrl,
      final List<LoadCommentsResponseModel?>? loadCommentsResponse,
      this.postId})
      : _loadCommentsResponse = loadCommentsResponse;

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
  final String? postId;

  @override
  String toString() {
    return 'CommentsScreenState.current(isScreenLoading: $isScreenLoading, isFrontendValidationSuccess: $isFrontendValidationSuccess, errorMessage: $errorMessage, isUploadCommentSuccess: $isUploadCommentSuccess, isImageLoading: $isImageLoading, postImageUrl: $postImageUrl, loadCommentsResponse: $loadCommentsResponse, postId: $postId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Current &&
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
            (identical(other.postId, postId) || other.postId == postId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isScreenLoading,
      isFrontendValidationSuccess,
      errorMessage,
      isUploadCommentSuccess,
      isImageLoading,
      postImageUrl,
      const DeepCollectionEquality().hash(_loadCommentsResponse),
      postId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentCopyWith<_$_Current> get copyWith =>
      __$$_CurrentCopyWithImpl<_$_Current>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isScreenLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isUploadCommentSuccess,
            bool isImageLoading,
            String? postImageUrl,
            List<LoadCommentsResponseModel?>? loadCommentsResponse,
            String? postId)
        current,
  }) {
    return current(
        isScreenLoading,
        isFrontendValidationSuccess,
        errorMessage,
        isUploadCommentSuccess,
        isImageLoading,
        postImageUrl,
        loadCommentsResponse,
        postId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isScreenLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isUploadCommentSuccess,
            bool isImageLoading,
            String? postImageUrl,
            List<LoadCommentsResponseModel?>? loadCommentsResponse,
            String? postId)?
        current,
  }) {
    return current?.call(
        isScreenLoading,
        isFrontendValidationSuccess,
        errorMessage,
        isUploadCommentSuccess,
        isImageLoading,
        postImageUrl,
        loadCommentsResponse,
        postId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isScreenLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isUploadCommentSuccess,
            bool isImageLoading,
            String? postImageUrl,
            List<LoadCommentsResponseModel?>? loadCommentsResponse,
            String? postId)?
        current,
    required TResult orElse(),
  }) {
    if (current != null) {
      return current(
          isScreenLoading,
          isFrontendValidationSuccess,
          errorMessage,
          isUploadCommentSuccess,
          isImageLoading,
          postImageUrl,
          loadCommentsResponse,
          postId);
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
      {required final bool isScreenLoading,
      required final bool isFrontendValidationSuccess,
      final String? errorMessage,
      required final bool isUploadCommentSuccess,
      required final bool isImageLoading,
      final String? postImageUrl,
      final List<LoadCommentsResponseModel?>? loadCommentsResponse,
      final String? postId}) = _$_Current;

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
  String? get postId;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentCopyWith<_$_Current> get copyWith =>
      throw _privateConstructorUsedError;
}
