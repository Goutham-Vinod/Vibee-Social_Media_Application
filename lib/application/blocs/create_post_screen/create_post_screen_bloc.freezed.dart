// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_post_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreatePostScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? description, String? privacy,
            File? photoOrVideo, String? location)
        createPost,
    required TResult Function() pickImageFromCamera,
    required TResult Function() pickImageFromStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? description, String? privacy, File? photoOrVideo,
            String? location)?
        createPost,
    TResult? Function()? pickImageFromCamera,
    TResult? Function()? pickImageFromStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? description, String? privacy, File? photoOrVideo,
            String? location)?
        createPost,
    TResult Function()? pickImageFromCamera,
    TResult Function()? pickImageFromStorage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatePost value) createPost,
    required TResult Function(pickImageFromCamera value) pickImageFromCamera,
    required TResult Function(pickImageFromStorage value) pickImageFromStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatePost value)? createPost,
    TResult? Function(pickImageFromCamera value)? pickImageFromCamera,
    TResult? Function(pickImageFromStorage value)? pickImageFromStorage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatePost value)? createPost,
    TResult Function(pickImageFromCamera value)? pickImageFromCamera,
    TResult Function(pickImageFromStorage value)? pickImageFromStorage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostScreenEventCopyWith<$Res> {
  factory $CreatePostScreenEventCopyWith(CreatePostScreenEvent value,
          $Res Function(CreatePostScreenEvent) then) =
      _$CreatePostScreenEventCopyWithImpl<$Res, CreatePostScreenEvent>;
}

/// @nodoc
class _$CreatePostScreenEventCopyWithImpl<$Res,
        $Val extends CreatePostScreenEvent>
    implements $CreatePostScreenEventCopyWith<$Res> {
  _$CreatePostScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CreatePostCopyWith<$Res> {
  factory _$$CreatePostCopyWith(
          _$CreatePost value, $Res Function(_$CreatePost) then) =
      __$$CreatePostCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? description,
      String? privacy,
      File? photoOrVideo,
      String? location});
}

/// @nodoc
class __$$CreatePostCopyWithImpl<$Res>
    extends _$CreatePostScreenEventCopyWithImpl<$Res, _$CreatePost>
    implements _$$CreatePostCopyWith<$Res> {
  __$$CreatePostCopyWithImpl(
      _$CreatePost _value, $Res Function(_$CreatePost) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? description = freezed,
    Object? privacy = freezed,
    Object? photoOrVideo = freezed,
    Object? location = freezed,
  }) {
    return _then(_$CreatePost(
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      privacy: freezed == privacy
          ? _value.privacy
          : privacy // ignore: cast_nullable_to_non_nullable
              as String?,
      photoOrVideo: freezed == photoOrVideo
          ? _value.photoOrVideo
          : photoOrVideo // ignore: cast_nullable_to_non_nullable
              as File?,
      location: freezed == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CreatePost implements CreatePost {
  const _$CreatePost(
      {this.description, this.privacy, this.photoOrVideo, this.location});

  @override
  final String? description;
  @override
  final String? privacy;
  @override
  final File? photoOrVideo;
  @override
  final String? location;

  @override
  String toString() {
    return 'CreatePostScreenEvent.createPost(description: $description, privacy: $privacy, photoOrVideo: $photoOrVideo, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreatePost &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.privacy, privacy) || other.privacy == privacy) &&
            (identical(other.photoOrVideo, photoOrVideo) ||
                other.photoOrVideo == photoOrVideo) &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, description, privacy, photoOrVideo, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreatePostCopyWith<_$CreatePost> get copyWith =>
      __$$CreatePostCopyWithImpl<_$CreatePost>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? description, String? privacy,
            File? photoOrVideo, String? location)
        createPost,
    required TResult Function() pickImageFromCamera,
    required TResult Function() pickImageFromStorage,
  }) {
    return createPost(description, privacy, photoOrVideo, location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? description, String? privacy, File? photoOrVideo,
            String? location)?
        createPost,
    TResult? Function()? pickImageFromCamera,
    TResult? Function()? pickImageFromStorage,
  }) {
    return createPost?.call(description, privacy, photoOrVideo, location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? description, String? privacy, File? photoOrVideo,
            String? location)?
        createPost,
    TResult Function()? pickImageFromCamera,
    TResult Function()? pickImageFromStorage,
    required TResult orElse(),
  }) {
    if (createPost != null) {
      return createPost(description, privacy, photoOrVideo, location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatePost value) createPost,
    required TResult Function(pickImageFromCamera value) pickImageFromCamera,
    required TResult Function(pickImageFromStorage value) pickImageFromStorage,
  }) {
    return createPost(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatePost value)? createPost,
    TResult? Function(pickImageFromCamera value)? pickImageFromCamera,
    TResult? Function(pickImageFromStorage value)? pickImageFromStorage,
  }) {
    return createPost?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatePost value)? createPost,
    TResult Function(pickImageFromCamera value)? pickImageFromCamera,
    TResult Function(pickImageFromStorage value)? pickImageFromStorage,
    required TResult orElse(),
  }) {
    if (createPost != null) {
      return createPost(this);
    }
    return orElse();
  }
}

abstract class CreatePost implements CreatePostScreenEvent {
  const factory CreatePost(
      {final String? description,
      final String? privacy,
      final File? photoOrVideo,
      final String? location}) = _$CreatePost;

  String? get description;
  String? get privacy;
  File? get photoOrVideo;
  String? get location;
  @JsonKey(ignore: true)
  _$$CreatePostCopyWith<_$CreatePost> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$pickImageFromCameraCopyWith<$Res> {
  factory _$$pickImageFromCameraCopyWith(_$pickImageFromCamera value,
          $Res Function(_$pickImageFromCamera) then) =
      __$$pickImageFromCameraCopyWithImpl<$Res>;
}

/// @nodoc
class __$$pickImageFromCameraCopyWithImpl<$Res>
    extends _$CreatePostScreenEventCopyWithImpl<$Res, _$pickImageFromCamera>
    implements _$$pickImageFromCameraCopyWith<$Res> {
  __$$pickImageFromCameraCopyWithImpl(
      _$pickImageFromCamera _value, $Res Function(_$pickImageFromCamera) _then)
      : super(_value, _then);
}

/// @nodoc

class _$pickImageFromCamera implements pickImageFromCamera {
  const _$pickImageFromCamera();

  @override
  String toString() {
    return 'CreatePostScreenEvent.pickImageFromCamera()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$pickImageFromCamera);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? description, String? privacy,
            File? photoOrVideo, String? location)
        createPost,
    required TResult Function() pickImageFromCamera,
    required TResult Function() pickImageFromStorage,
  }) {
    return pickImageFromCamera();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? description, String? privacy, File? photoOrVideo,
            String? location)?
        createPost,
    TResult? Function()? pickImageFromCamera,
    TResult? Function()? pickImageFromStorage,
  }) {
    return pickImageFromCamera?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? description, String? privacy, File? photoOrVideo,
            String? location)?
        createPost,
    TResult Function()? pickImageFromCamera,
    TResult Function()? pickImageFromStorage,
    required TResult orElse(),
  }) {
    if (pickImageFromCamera != null) {
      return pickImageFromCamera();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatePost value) createPost,
    required TResult Function(pickImageFromCamera value) pickImageFromCamera,
    required TResult Function(pickImageFromStorage value) pickImageFromStorage,
  }) {
    return pickImageFromCamera(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatePost value)? createPost,
    TResult? Function(pickImageFromCamera value)? pickImageFromCamera,
    TResult? Function(pickImageFromStorage value)? pickImageFromStorage,
  }) {
    return pickImageFromCamera?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatePost value)? createPost,
    TResult Function(pickImageFromCamera value)? pickImageFromCamera,
    TResult Function(pickImageFromStorage value)? pickImageFromStorage,
    required TResult orElse(),
  }) {
    if (pickImageFromCamera != null) {
      return pickImageFromCamera(this);
    }
    return orElse();
  }
}

abstract class pickImageFromCamera implements CreatePostScreenEvent {
  const factory pickImageFromCamera() = _$pickImageFromCamera;
}

/// @nodoc
abstract class _$$pickImageFromStorageCopyWith<$Res> {
  factory _$$pickImageFromStorageCopyWith(_$pickImageFromStorage value,
          $Res Function(_$pickImageFromStorage) then) =
      __$$pickImageFromStorageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$pickImageFromStorageCopyWithImpl<$Res>
    extends _$CreatePostScreenEventCopyWithImpl<$Res, _$pickImageFromStorage>
    implements _$$pickImageFromStorageCopyWith<$Res> {
  __$$pickImageFromStorageCopyWithImpl(_$pickImageFromStorage _value,
      $Res Function(_$pickImageFromStorage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$pickImageFromStorage implements pickImageFromStorage {
  const _$pickImageFromStorage();

  @override
  String toString() {
    return 'CreatePostScreenEvent.pickImageFromStorage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$pickImageFromStorage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? description, String? privacy,
            File? photoOrVideo, String? location)
        createPost,
    required TResult Function() pickImageFromCamera,
    required TResult Function() pickImageFromStorage,
  }) {
    return pickImageFromStorage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? description, String? privacy, File? photoOrVideo,
            String? location)?
        createPost,
    TResult? Function()? pickImageFromCamera,
    TResult? Function()? pickImageFromStorage,
  }) {
    return pickImageFromStorage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? description, String? privacy, File? photoOrVideo,
            String? location)?
        createPost,
    TResult Function()? pickImageFromCamera,
    TResult Function()? pickImageFromStorage,
    required TResult orElse(),
  }) {
    if (pickImageFromStorage != null) {
      return pickImageFromStorage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CreatePost value) createPost,
    required TResult Function(pickImageFromCamera value) pickImageFromCamera,
    required TResult Function(pickImageFromStorage value) pickImageFromStorage,
  }) {
    return pickImageFromStorage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CreatePost value)? createPost,
    TResult? Function(pickImageFromCamera value)? pickImageFromCamera,
    TResult? Function(pickImageFromStorage value)? pickImageFromStorage,
  }) {
    return pickImageFromStorage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CreatePost value)? createPost,
    TResult Function(pickImageFromCamera value)? pickImageFromCamera,
    TResult Function(pickImageFromStorage value)? pickImageFromStorage,
    required TResult orElse(),
  }) {
    if (pickImageFromStorage != null) {
      return pickImageFromStorage(this);
    }
    return orElse();
  }
}

abstract class pickImageFromStorage implements CreatePostScreenEvent {
  const factory pickImageFromStorage() = _$pickImageFromStorage;
}

/// @nodoc
mixin _$CreatePostScreenState {
  bool get isScreenLoading => throw _privateConstructorUsedError;
  bool get isFrontendValidationSuccess => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isUploadInProgress => throw _privateConstructorUsedError;
  bool get isUploadPostSuccess => throw _privateConstructorUsedError;
  bool get isImageLoading => throw _privateConstructorUsedError;
  File? get postImage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isScreenLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isUploadInProgress,
            bool isUploadPostSuccess,
            bool isImageLoading,
            File? postImage)
        currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isScreenLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isUploadInProgress,
            bool isUploadPostSuccess,
            bool isImageLoading,
            File? postImage)?
        currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isScreenLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isUploadInProgress,
            bool isUploadPostSuccess,
            bool isImageLoading,
            File? postImage)?
        currentState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentState value) currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentState value)? currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentState value)? currentState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreatePostScreenStateCopyWith<CreatePostScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostScreenStateCopyWith<$Res> {
  factory $CreatePostScreenStateCopyWith(CreatePostScreenState value,
          $Res Function(CreatePostScreenState) then) =
      _$CreatePostScreenStateCopyWithImpl<$Res, CreatePostScreenState>;
  @useResult
  $Res call(
      {bool isScreenLoading,
      bool isFrontendValidationSuccess,
      String? errorMessage,
      bool isUploadInProgress,
      bool isUploadPostSuccess,
      bool isImageLoading,
      File? postImage});
}

/// @nodoc
class _$CreatePostScreenStateCopyWithImpl<$Res,
        $Val extends CreatePostScreenState>
    implements $CreatePostScreenStateCopyWith<$Res> {
  _$CreatePostScreenStateCopyWithImpl(this._value, this._then);

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
    Object? isUploadInProgress = null,
    Object? isUploadPostSuccess = null,
    Object? isImageLoading = null,
    Object? postImage = freezed,
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
      isUploadInProgress: null == isUploadInProgress
          ? _value.isUploadInProgress
          : isUploadInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      isUploadPostSuccess: null == isUploadPostSuccess
          ? _value.isUploadPostSuccess
          : isUploadPostSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isImageLoading: null == isImageLoading
          ? _value.isImageLoading
          : isImageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      postImage: freezed == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as File?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentStateCopyWith<$Res>
    implements $CreatePostScreenStateCopyWith<$Res> {
  factory _$$_CurrentStateCopyWith(
          _$_CurrentState value, $Res Function(_$_CurrentState) then) =
      __$$_CurrentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isScreenLoading,
      bool isFrontendValidationSuccess,
      String? errorMessage,
      bool isUploadInProgress,
      bool isUploadPostSuccess,
      bool isImageLoading,
      File? postImage});
}

/// @nodoc
class __$$_CurrentStateCopyWithImpl<$Res>
    extends _$CreatePostScreenStateCopyWithImpl<$Res, _$_CurrentState>
    implements _$$_CurrentStateCopyWith<$Res> {
  __$$_CurrentStateCopyWithImpl(
      _$_CurrentState _value, $Res Function(_$_CurrentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isScreenLoading = null,
    Object? isFrontendValidationSuccess = null,
    Object? errorMessage = freezed,
    Object? isUploadInProgress = null,
    Object? isUploadPostSuccess = null,
    Object? isImageLoading = null,
    Object? postImage = freezed,
  }) {
    return _then(_$_CurrentState(
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
      isUploadInProgress: null == isUploadInProgress
          ? _value.isUploadInProgress
          : isUploadInProgress // ignore: cast_nullable_to_non_nullable
              as bool,
      isUploadPostSuccess: null == isUploadPostSuccess
          ? _value.isUploadPostSuccess
          : isUploadPostSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      isImageLoading: null == isImageLoading
          ? _value.isImageLoading
          : isImageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      postImage: freezed == postImage
          ? _value.postImage
          : postImage // ignore: cast_nullable_to_non_nullable
              as File?,
    ));
  }
}

/// @nodoc

class _$_CurrentState implements _CurrentState {
  const _$_CurrentState(
      {required this.isScreenLoading,
      required this.isFrontendValidationSuccess,
      this.errorMessage,
      required this.isUploadInProgress,
      required this.isUploadPostSuccess,
      required this.isImageLoading,
      this.postImage});

  @override
  final bool isScreenLoading;
  @override
  final bool isFrontendValidationSuccess;
  @override
  final String? errorMessage;
  @override
  final bool isUploadInProgress;
  @override
  final bool isUploadPostSuccess;
  @override
  final bool isImageLoading;
  @override
  final File? postImage;

  @override
  String toString() {
    return 'CreatePostScreenState.currentState(isScreenLoading: $isScreenLoading, isFrontendValidationSuccess: $isFrontendValidationSuccess, errorMessage: $errorMessage, isUploadInProgress: $isUploadInProgress, isUploadPostSuccess: $isUploadPostSuccess, isImageLoading: $isImageLoading, postImage: $postImage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentState &&
            (identical(other.isScreenLoading, isScreenLoading) ||
                other.isScreenLoading == isScreenLoading) &&
            (identical(other.isFrontendValidationSuccess,
                    isFrontendValidationSuccess) ||
                other.isFrontendValidationSuccess ==
                    isFrontendValidationSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isUploadInProgress, isUploadInProgress) ||
                other.isUploadInProgress == isUploadInProgress) &&
            (identical(other.isUploadPostSuccess, isUploadPostSuccess) ||
                other.isUploadPostSuccess == isUploadPostSuccess) &&
            (identical(other.isImageLoading, isImageLoading) ||
                other.isImageLoading == isImageLoading) &&
            (identical(other.postImage, postImage) ||
                other.postImage == postImage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isScreenLoading,
      isFrontendValidationSuccess,
      errorMessage,
      isUploadInProgress,
      isUploadPostSuccess,
      isImageLoading,
      postImage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentStateCopyWith<_$_CurrentState> get copyWith =>
      __$$_CurrentStateCopyWithImpl<_$_CurrentState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isScreenLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isUploadInProgress,
            bool isUploadPostSuccess,
            bool isImageLoading,
            File? postImage)
        currentState,
  }) {
    return currentState(
        isScreenLoading,
        isFrontendValidationSuccess,
        errorMessage,
        isUploadInProgress,
        isUploadPostSuccess,
        isImageLoading,
        postImage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isScreenLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isUploadInProgress,
            bool isUploadPostSuccess,
            bool isImageLoading,
            File? postImage)?
        currentState,
  }) {
    return currentState?.call(
        isScreenLoading,
        isFrontendValidationSuccess,
        errorMessage,
        isUploadInProgress,
        isUploadPostSuccess,
        isImageLoading,
        postImage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isScreenLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isUploadInProgress,
            bool isUploadPostSuccess,
            bool isImageLoading,
            File? postImage)?
        currentState,
    required TResult orElse(),
  }) {
    if (currentState != null) {
      return currentState(
          isScreenLoading,
          isFrontendValidationSuccess,
          errorMessage,
          isUploadInProgress,
          isUploadPostSuccess,
          isImageLoading,
          postImage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CurrentState value) currentState,
  }) {
    return currentState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CurrentState value)? currentState,
  }) {
    return currentState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CurrentState value)? currentState,
    required TResult orElse(),
  }) {
    if (currentState != null) {
      return currentState(this);
    }
    return orElse();
  }
}

abstract class _CurrentState implements CreatePostScreenState {
  const factory _CurrentState(
      {required final bool isScreenLoading,
      required final bool isFrontendValidationSuccess,
      final String? errorMessage,
      required final bool isUploadInProgress,
      required final bool isUploadPostSuccess,
      required final bool isImageLoading,
      final File? postImage}) = _$_CurrentState;

  @override
  bool get isScreenLoading;
  @override
  bool get isFrontendValidationSuccess;
  @override
  String? get errorMessage;
  @override
  bool get isUploadInProgress;
  @override
  bool get isUploadPostSuccess;
  @override
  bool get isImageLoading;
  @override
  File? get postImage;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentStateCopyWith<_$_CurrentState> get copyWith =>
      throw _privateConstructorUsedError;
}
