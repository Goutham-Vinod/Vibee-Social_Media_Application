// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfilePageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? username, bool isCurrentUserProfile)
        initializeProfilePageBloc,
    required TResult Function() sentFriendRequest,
    required TResult Function() cancelFriendRequest,
    required TResult Function() unFriend,
    required TResult Function() acceptFriendRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? username, bool isCurrentUserProfile)?
        initializeProfilePageBloc,
    TResult? Function()? sentFriendRequest,
    TResult? Function()? cancelFriendRequest,
    TResult? Function()? unFriend,
    TResult? Function()? acceptFriendRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? username, bool isCurrentUserProfile)?
        initializeProfilePageBloc,
    TResult Function()? sentFriendRequest,
    TResult Function()? cancelFriendRequest,
    TResult Function()? unFriend,
    TResult Function()? acceptFriendRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializaProfilePageBloc value)
        initializeProfilePageBloc,
    required TResult Function(SentFriendRequest value) sentFriendRequest,
    required TResult Function(CancelFriendRequest value) cancelFriendRequest,
    required TResult Function(UnFriend value) unFriend,
    required TResult Function(AcceptFriendRequest value) acceptFriendRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializaProfilePageBloc value)?
        initializeProfilePageBloc,
    TResult? Function(SentFriendRequest value)? sentFriendRequest,
    TResult? Function(CancelFriendRequest value)? cancelFriendRequest,
    TResult? Function(UnFriend value)? unFriend,
    TResult? Function(AcceptFriendRequest value)? acceptFriendRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializaProfilePageBloc value)?
        initializeProfilePageBloc,
    TResult Function(SentFriendRequest value)? sentFriendRequest,
    TResult Function(CancelFriendRequest value)? cancelFriendRequest,
    TResult Function(UnFriend value)? unFriend,
    TResult Function(AcceptFriendRequest value)? acceptFriendRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePageEventCopyWith<$Res> {
  factory $ProfilePageEventCopyWith(
          ProfilePageEvent value, $Res Function(ProfilePageEvent) then) =
      _$ProfilePageEventCopyWithImpl<$Res, ProfilePageEvent>;
}

/// @nodoc
class _$ProfilePageEventCopyWithImpl<$Res, $Val extends ProfilePageEvent>
    implements $ProfilePageEventCopyWith<$Res> {
  _$ProfilePageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializaProfilePageBlocCopyWith<$Res> {
  factory _$$InitializaProfilePageBlocCopyWith(
          _$InitializaProfilePageBloc value,
          $Res Function(_$InitializaProfilePageBloc) then) =
      __$$InitializaProfilePageBlocCopyWithImpl<$Res>;
  @useResult
  $Res call({String? username, bool isCurrentUserProfile});
}

/// @nodoc
class __$$InitializaProfilePageBlocCopyWithImpl<$Res>
    extends _$ProfilePageEventCopyWithImpl<$Res, _$InitializaProfilePageBloc>
    implements _$$InitializaProfilePageBlocCopyWith<$Res> {
  __$$InitializaProfilePageBlocCopyWithImpl(_$InitializaProfilePageBloc _value,
      $Res Function(_$InitializaProfilePageBloc) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? username = freezed,
    Object? isCurrentUserProfile = null,
  }) {
    return _then(_$InitializaProfilePageBloc(
      username: freezed == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String?,
      isCurrentUserProfile: null == isCurrentUserProfile
          ? _value.isCurrentUserProfile
          : isCurrentUserProfile // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitializaProfilePageBloc implements InitializaProfilePageBloc {
  const _$InitializaProfilePageBloc(
      {this.username, required this.isCurrentUserProfile});

  @override
  final String? username;
  @override
  final bool isCurrentUserProfile;

  @override
  String toString() {
    return 'ProfilePageEvent.initializeProfilePageBloc(username: $username, isCurrentUserProfile: $isCurrentUserProfile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializaProfilePageBloc &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.isCurrentUserProfile, isCurrentUserProfile) ||
                other.isCurrentUserProfile == isCurrentUserProfile));
  }

  @override
  int get hashCode => Object.hash(runtimeType, username, isCurrentUserProfile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitializaProfilePageBlocCopyWith<_$InitializaProfilePageBloc>
      get copyWith => __$$InitializaProfilePageBlocCopyWithImpl<
          _$InitializaProfilePageBloc>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? username, bool isCurrentUserProfile)
        initializeProfilePageBloc,
    required TResult Function() sentFriendRequest,
    required TResult Function() cancelFriendRequest,
    required TResult Function() unFriend,
    required TResult Function() acceptFriendRequest,
  }) {
    return initializeProfilePageBloc(username, isCurrentUserProfile);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? username, bool isCurrentUserProfile)?
        initializeProfilePageBloc,
    TResult? Function()? sentFriendRequest,
    TResult? Function()? cancelFriendRequest,
    TResult? Function()? unFriend,
    TResult? Function()? acceptFriendRequest,
  }) {
    return initializeProfilePageBloc?.call(username, isCurrentUserProfile);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? username, bool isCurrentUserProfile)?
        initializeProfilePageBloc,
    TResult Function()? sentFriendRequest,
    TResult Function()? cancelFriendRequest,
    TResult Function()? unFriend,
    TResult Function()? acceptFriendRequest,
    required TResult orElse(),
  }) {
    if (initializeProfilePageBloc != null) {
      return initializeProfilePageBloc(username, isCurrentUserProfile);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializaProfilePageBloc value)
        initializeProfilePageBloc,
    required TResult Function(SentFriendRequest value) sentFriendRequest,
    required TResult Function(CancelFriendRequest value) cancelFriendRequest,
    required TResult Function(UnFriend value) unFriend,
    required TResult Function(AcceptFriendRequest value) acceptFriendRequest,
  }) {
    return initializeProfilePageBloc(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializaProfilePageBloc value)?
        initializeProfilePageBloc,
    TResult? Function(SentFriendRequest value)? sentFriendRequest,
    TResult? Function(CancelFriendRequest value)? cancelFriendRequest,
    TResult? Function(UnFriend value)? unFriend,
    TResult? Function(AcceptFriendRequest value)? acceptFriendRequest,
  }) {
    return initializeProfilePageBloc?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializaProfilePageBloc value)?
        initializeProfilePageBloc,
    TResult Function(SentFriendRequest value)? sentFriendRequest,
    TResult Function(CancelFriendRequest value)? cancelFriendRequest,
    TResult Function(UnFriend value)? unFriend,
    TResult Function(AcceptFriendRequest value)? acceptFriendRequest,
    required TResult orElse(),
  }) {
    if (initializeProfilePageBloc != null) {
      return initializeProfilePageBloc(this);
    }
    return orElse();
  }
}

abstract class InitializaProfilePageBloc implements ProfilePageEvent {
  const factory InitializaProfilePageBloc(
      {final String? username,
      required final bool isCurrentUserProfile}) = _$InitializaProfilePageBloc;

  String? get username;
  bool get isCurrentUserProfile;
  @JsonKey(ignore: true)
  _$$InitializaProfilePageBlocCopyWith<_$InitializaProfilePageBloc>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SentFriendRequestCopyWith<$Res> {
  factory _$$SentFriendRequestCopyWith(
          _$SentFriendRequest value, $Res Function(_$SentFriendRequest) then) =
      __$$SentFriendRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SentFriendRequestCopyWithImpl<$Res>
    extends _$ProfilePageEventCopyWithImpl<$Res, _$SentFriendRequest>
    implements _$$SentFriendRequestCopyWith<$Res> {
  __$$SentFriendRequestCopyWithImpl(
      _$SentFriendRequest _value, $Res Function(_$SentFriendRequest) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SentFriendRequest implements SentFriendRequest {
  const _$SentFriendRequest();

  @override
  String toString() {
    return 'ProfilePageEvent.sentFriendRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SentFriendRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? username, bool isCurrentUserProfile)
        initializeProfilePageBloc,
    required TResult Function() sentFriendRequest,
    required TResult Function() cancelFriendRequest,
    required TResult Function() unFriend,
    required TResult Function() acceptFriendRequest,
  }) {
    return sentFriendRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? username, bool isCurrentUserProfile)?
        initializeProfilePageBloc,
    TResult? Function()? sentFriendRequest,
    TResult? Function()? cancelFriendRequest,
    TResult? Function()? unFriend,
    TResult? Function()? acceptFriendRequest,
  }) {
    return sentFriendRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? username, bool isCurrentUserProfile)?
        initializeProfilePageBloc,
    TResult Function()? sentFriendRequest,
    TResult Function()? cancelFriendRequest,
    TResult Function()? unFriend,
    TResult Function()? acceptFriendRequest,
    required TResult orElse(),
  }) {
    if (sentFriendRequest != null) {
      return sentFriendRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializaProfilePageBloc value)
        initializeProfilePageBloc,
    required TResult Function(SentFriendRequest value) sentFriendRequest,
    required TResult Function(CancelFriendRequest value) cancelFriendRequest,
    required TResult Function(UnFriend value) unFriend,
    required TResult Function(AcceptFriendRequest value) acceptFriendRequest,
  }) {
    return sentFriendRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializaProfilePageBloc value)?
        initializeProfilePageBloc,
    TResult? Function(SentFriendRequest value)? sentFriendRequest,
    TResult? Function(CancelFriendRequest value)? cancelFriendRequest,
    TResult? Function(UnFriend value)? unFriend,
    TResult? Function(AcceptFriendRequest value)? acceptFriendRequest,
  }) {
    return sentFriendRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializaProfilePageBloc value)?
        initializeProfilePageBloc,
    TResult Function(SentFriendRequest value)? sentFriendRequest,
    TResult Function(CancelFriendRequest value)? cancelFriendRequest,
    TResult Function(UnFriend value)? unFriend,
    TResult Function(AcceptFriendRequest value)? acceptFriendRequest,
    required TResult orElse(),
  }) {
    if (sentFriendRequest != null) {
      return sentFriendRequest(this);
    }
    return orElse();
  }
}

abstract class SentFriendRequest implements ProfilePageEvent {
  const factory SentFriendRequest() = _$SentFriendRequest;
}

/// @nodoc
abstract class _$$CancelFriendRequestCopyWith<$Res> {
  factory _$$CancelFriendRequestCopyWith(_$CancelFriendRequest value,
          $Res Function(_$CancelFriendRequest) then) =
      __$$CancelFriendRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CancelFriendRequestCopyWithImpl<$Res>
    extends _$ProfilePageEventCopyWithImpl<$Res, _$CancelFriendRequest>
    implements _$$CancelFriendRequestCopyWith<$Res> {
  __$$CancelFriendRequestCopyWithImpl(
      _$CancelFriendRequest _value, $Res Function(_$CancelFriendRequest) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CancelFriendRequest implements CancelFriendRequest {
  const _$CancelFriendRequest();

  @override
  String toString() {
    return 'ProfilePageEvent.cancelFriendRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CancelFriendRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? username, bool isCurrentUserProfile)
        initializeProfilePageBloc,
    required TResult Function() sentFriendRequest,
    required TResult Function() cancelFriendRequest,
    required TResult Function() unFriend,
    required TResult Function() acceptFriendRequest,
  }) {
    return cancelFriendRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? username, bool isCurrentUserProfile)?
        initializeProfilePageBloc,
    TResult? Function()? sentFriendRequest,
    TResult? Function()? cancelFriendRequest,
    TResult? Function()? unFriend,
    TResult? Function()? acceptFriendRequest,
  }) {
    return cancelFriendRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? username, bool isCurrentUserProfile)?
        initializeProfilePageBloc,
    TResult Function()? sentFriendRequest,
    TResult Function()? cancelFriendRequest,
    TResult Function()? unFriend,
    TResult Function()? acceptFriendRequest,
    required TResult orElse(),
  }) {
    if (cancelFriendRequest != null) {
      return cancelFriendRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializaProfilePageBloc value)
        initializeProfilePageBloc,
    required TResult Function(SentFriendRequest value) sentFriendRequest,
    required TResult Function(CancelFriendRequest value) cancelFriendRequest,
    required TResult Function(UnFriend value) unFriend,
    required TResult Function(AcceptFriendRequest value) acceptFriendRequest,
  }) {
    return cancelFriendRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializaProfilePageBloc value)?
        initializeProfilePageBloc,
    TResult? Function(SentFriendRequest value)? sentFriendRequest,
    TResult? Function(CancelFriendRequest value)? cancelFriendRequest,
    TResult? Function(UnFriend value)? unFriend,
    TResult? Function(AcceptFriendRequest value)? acceptFriendRequest,
  }) {
    return cancelFriendRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializaProfilePageBloc value)?
        initializeProfilePageBloc,
    TResult Function(SentFriendRequest value)? sentFriendRequest,
    TResult Function(CancelFriendRequest value)? cancelFriendRequest,
    TResult Function(UnFriend value)? unFriend,
    TResult Function(AcceptFriendRequest value)? acceptFriendRequest,
    required TResult orElse(),
  }) {
    if (cancelFriendRequest != null) {
      return cancelFriendRequest(this);
    }
    return orElse();
  }
}

abstract class CancelFriendRequest implements ProfilePageEvent {
  const factory CancelFriendRequest() = _$CancelFriendRequest;
}

/// @nodoc
abstract class _$$UnFriendCopyWith<$Res> {
  factory _$$UnFriendCopyWith(
          _$UnFriend value, $Res Function(_$UnFriend) then) =
      __$$UnFriendCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnFriendCopyWithImpl<$Res>
    extends _$ProfilePageEventCopyWithImpl<$Res, _$UnFriend>
    implements _$$UnFriendCopyWith<$Res> {
  __$$UnFriendCopyWithImpl(_$UnFriend _value, $Res Function(_$UnFriend) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnFriend implements UnFriend {
  const _$UnFriend();

  @override
  String toString() {
    return 'ProfilePageEvent.unFriend()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnFriend);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? username, bool isCurrentUserProfile)
        initializeProfilePageBloc,
    required TResult Function() sentFriendRequest,
    required TResult Function() cancelFriendRequest,
    required TResult Function() unFriend,
    required TResult Function() acceptFriendRequest,
  }) {
    return unFriend();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? username, bool isCurrentUserProfile)?
        initializeProfilePageBloc,
    TResult? Function()? sentFriendRequest,
    TResult? Function()? cancelFriendRequest,
    TResult? Function()? unFriend,
    TResult? Function()? acceptFriendRequest,
  }) {
    return unFriend?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? username, bool isCurrentUserProfile)?
        initializeProfilePageBloc,
    TResult Function()? sentFriendRequest,
    TResult Function()? cancelFriendRequest,
    TResult Function()? unFriend,
    TResult Function()? acceptFriendRequest,
    required TResult orElse(),
  }) {
    if (unFriend != null) {
      return unFriend();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializaProfilePageBloc value)
        initializeProfilePageBloc,
    required TResult Function(SentFriendRequest value) sentFriendRequest,
    required TResult Function(CancelFriendRequest value) cancelFriendRequest,
    required TResult Function(UnFriend value) unFriend,
    required TResult Function(AcceptFriendRequest value) acceptFriendRequest,
  }) {
    return unFriend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializaProfilePageBloc value)?
        initializeProfilePageBloc,
    TResult? Function(SentFriendRequest value)? sentFriendRequest,
    TResult? Function(CancelFriendRequest value)? cancelFriendRequest,
    TResult? Function(UnFriend value)? unFriend,
    TResult? Function(AcceptFriendRequest value)? acceptFriendRequest,
  }) {
    return unFriend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializaProfilePageBloc value)?
        initializeProfilePageBloc,
    TResult Function(SentFriendRequest value)? sentFriendRequest,
    TResult Function(CancelFriendRequest value)? cancelFriendRequest,
    TResult Function(UnFriend value)? unFriend,
    TResult Function(AcceptFriendRequest value)? acceptFriendRequest,
    required TResult orElse(),
  }) {
    if (unFriend != null) {
      return unFriend(this);
    }
    return orElse();
  }
}

abstract class UnFriend implements ProfilePageEvent {
  const factory UnFriend() = _$UnFriend;
}

/// @nodoc
abstract class _$$AcceptFriendRequestCopyWith<$Res> {
  factory _$$AcceptFriendRequestCopyWith(_$AcceptFriendRequest value,
          $Res Function(_$AcceptFriendRequest) then) =
      __$$AcceptFriendRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AcceptFriendRequestCopyWithImpl<$Res>
    extends _$ProfilePageEventCopyWithImpl<$Res, _$AcceptFriendRequest>
    implements _$$AcceptFriendRequestCopyWith<$Res> {
  __$$AcceptFriendRequestCopyWithImpl(
      _$AcceptFriendRequest _value, $Res Function(_$AcceptFriendRequest) _then)
      : super(_value, _then);
}

/// @nodoc

class _$AcceptFriendRequest implements AcceptFriendRequest {
  const _$AcceptFriendRequest();

  @override
  String toString() {
    return 'ProfilePageEvent.acceptFriendRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AcceptFriendRequest);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? username, bool isCurrentUserProfile)
        initializeProfilePageBloc,
    required TResult Function() sentFriendRequest,
    required TResult Function() cancelFriendRequest,
    required TResult Function() unFriend,
    required TResult Function() acceptFriendRequest,
  }) {
    return acceptFriendRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? username, bool isCurrentUserProfile)?
        initializeProfilePageBloc,
    TResult? Function()? sentFriendRequest,
    TResult? Function()? cancelFriendRequest,
    TResult? Function()? unFriend,
    TResult? Function()? acceptFriendRequest,
  }) {
    return acceptFriendRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? username, bool isCurrentUserProfile)?
        initializeProfilePageBloc,
    TResult Function()? sentFriendRequest,
    TResult Function()? cancelFriendRequest,
    TResult Function()? unFriend,
    TResult Function()? acceptFriendRequest,
    required TResult orElse(),
  }) {
    if (acceptFriendRequest != null) {
      return acceptFriendRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializaProfilePageBloc value)
        initializeProfilePageBloc,
    required TResult Function(SentFriendRequest value) sentFriendRequest,
    required TResult Function(CancelFriendRequest value) cancelFriendRequest,
    required TResult Function(UnFriend value) unFriend,
    required TResult Function(AcceptFriendRequest value) acceptFriendRequest,
  }) {
    return acceptFriendRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializaProfilePageBloc value)?
        initializeProfilePageBloc,
    TResult? Function(SentFriendRequest value)? sentFriendRequest,
    TResult? Function(CancelFriendRequest value)? cancelFriendRequest,
    TResult? Function(UnFriend value)? unFriend,
    TResult? Function(AcceptFriendRequest value)? acceptFriendRequest,
  }) {
    return acceptFriendRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializaProfilePageBloc value)?
        initializeProfilePageBloc,
    TResult Function(SentFriendRequest value)? sentFriendRequest,
    TResult Function(CancelFriendRequest value)? cancelFriendRequest,
    TResult Function(UnFriend value)? unFriend,
    TResult Function(AcceptFriendRequest value)? acceptFriendRequest,
    required TResult orElse(),
  }) {
    if (acceptFriendRequest != null) {
      return acceptFriendRequest(this);
    }
    return orElse();
  }
}

abstract class AcceptFriendRequest implements ProfilePageEvent {
  const factory AcceptFriendRequest() = _$AcceptFriendRequest;
}

/// @nodoc
mixin _$ProfilePageState {
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  bool get isCurrentUserProfile => throw _privateConstructorUsedError;
  bool? get isFriend => throw _privateConstructorUsedError;
  bool? get isFriendRequestSent => throw _privateConstructorUsedError;
  bool get isPageLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get friendId => throw _privateConstructorUsedError;
  bool? get isFriendRequestRecieved => throw _privateConstructorUsedError;
  GetUserDetailsResponseModel? get getUserDetailsResponse =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firstName,
            String lastName,
            String username,
            bool isCurrentUserProfile,
            bool? isFriend,
            bool? isFriendRequestSent,
            bool isPageLoading,
            String? errorMessage,
            String? friendId,
            bool? isFriendRequestRecieved,
            GetUserDetailsResponseModel? getUserDetailsResponse)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String firstName,
            String lastName,
            String username,
            bool isCurrentUserProfile,
            bool? isFriend,
            bool? isFriendRequestSent,
            bool isPageLoading,
            String? errorMessage,
            String? friendId,
            bool? isFriendRequestRecieved,
            GetUserDetailsResponseModel? getUserDetailsResponse)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firstName,
            String lastName,
            String username,
            bool isCurrentUserProfile,
            bool? isFriend,
            bool? isFriendRequestSent,
            bool isPageLoading,
            String? errorMessage,
            String? friendId,
            bool? isFriendRequestRecieved,
            GetUserDetailsResponseModel? getUserDetailsResponse)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfilePageStateCopyWith<ProfilePageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfilePageStateCopyWith<$Res> {
  factory $ProfilePageStateCopyWith(
          ProfilePageState value, $Res Function(ProfilePageState) then) =
      _$ProfilePageStateCopyWithImpl<$Res, ProfilePageState>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String username,
      bool isCurrentUserProfile,
      bool? isFriend,
      bool? isFriendRequestSent,
      bool isPageLoading,
      String? errorMessage,
      String? friendId,
      bool? isFriendRequestRecieved,
      GetUserDetailsResponseModel? getUserDetailsResponse});
}

/// @nodoc
class _$ProfilePageStateCopyWithImpl<$Res, $Val extends ProfilePageState>
    implements $ProfilePageStateCopyWith<$Res> {
  _$ProfilePageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? isCurrentUserProfile = null,
    Object? isFriend = freezed,
    Object? isFriendRequestSent = freezed,
    Object? isPageLoading = null,
    Object? errorMessage = freezed,
    Object? friendId = freezed,
    Object? isFriendRequestRecieved = freezed,
    Object? getUserDetailsResponse = freezed,
  }) {
    return _then(_value.copyWith(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      isCurrentUserProfile: null == isCurrentUserProfile
          ? _value.isCurrentUserProfile
          : isCurrentUserProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      isFriend: freezed == isFriend
          ? _value.isFriend
          : isFriend // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFriendRequestSent: freezed == isFriendRequestSent
          ? _value.isFriendRequestSent
          : isFriendRequestSent // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPageLoading: null == isPageLoading
          ? _value.isPageLoading
          : isPageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      friendId: freezed == friendId
          ? _value.friendId
          : friendId // ignore: cast_nullable_to_non_nullable
              as String?,
      isFriendRequestRecieved: freezed == isFriendRequestRecieved
          ? _value.isFriendRequestRecieved
          : isFriendRequestRecieved // ignore: cast_nullable_to_non_nullable
              as bool?,
      getUserDetailsResponse: freezed == getUserDetailsResponse
          ? _value.getUserDetailsResponse
          : getUserDetailsResponse // ignore: cast_nullable_to_non_nullable
              as GetUserDetailsResponseModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $ProfilePageStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String username,
      bool isCurrentUserProfile,
      bool? isFriend,
      bool? isFriendRequestSent,
      bool isPageLoading,
      String? errorMessage,
      String? friendId,
      bool? isFriendRequestRecieved,
      GetUserDetailsResponseModel? getUserDetailsResponse});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$ProfilePageStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? isCurrentUserProfile = null,
    Object? isFriend = freezed,
    Object? isFriendRequestSent = freezed,
    Object? isPageLoading = null,
    Object? errorMessage = freezed,
    Object? friendId = freezed,
    Object? isFriendRequestRecieved = freezed,
    Object? getUserDetailsResponse = freezed,
  }) {
    return _then(_$_Initial(
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: null == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      isCurrentUserProfile: null == isCurrentUserProfile
          ? _value.isCurrentUserProfile
          : isCurrentUserProfile // ignore: cast_nullable_to_non_nullable
              as bool,
      isFriend: freezed == isFriend
          ? _value.isFriend
          : isFriend // ignore: cast_nullable_to_non_nullable
              as bool?,
      isFriendRequestSent: freezed == isFriendRequestSent
          ? _value.isFriendRequestSent
          : isFriendRequestSent // ignore: cast_nullable_to_non_nullable
              as bool?,
      isPageLoading: null == isPageLoading
          ? _value.isPageLoading
          : isPageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      friendId: freezed == friendId
          ? _value.friendId
          : friendId // ignore: cast_nullable_to_non_nullable
              as String?,
      isFriendRequestRecieved: freezed == isFriendRequestRecieved
          ? _value.isFriendRequestRecieved
          : isFriendRequestRecieved // ignore: cast_nullable_to_non_nullable
              as bool?,
      getUserDetailsResponse: freezed == getUserDetailsResponse
          ? _value.getUserDetailsResponse
          : getUserDetailsResponse // ignore: cast_nullable_to_non_nullable
              as GetUserDetailsResponseModel?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.firstName,
      required this.lastName,
      required this.username,
      required this.isCurrentUserProfile,
      this.isFriend,
      this.isFriendRequestSent,
      required this.isPageLoading,
      this.errorMessage,
      this.friendId,
      this.isFriendRequestRecieved,
      this.getUserDetailsResponse});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String username;
  @override
  final bool isCurrentUserProfile;
  @override
  final bool? isFriend;
  @override
  final bool? isFriendRequestSent;
  @override
  final bool isPageLoading;
  @override
  final String? errorMessage;
  @override
  final String? friendId;
  @override
  final bool? isFriendRequestRecieved;
  @override
  final GetUserDetailsResponseModel? getUserDetailsResponse;

  @override
  String toString() {
    return 'ProfilePageState.initial(firstName: $firstName, lastName: $lastName, username: $username, isCurrentUserProfile: $isCurrentUserProfile, isFriend: $isFriend, isFriendRequestSent: $isFriendRequestSent, isPageLoading: $isPageLoading, errorMessage: $errorMessage, friendId: $friendId, isFriendRequestRecieved: $isFriendRequestRecieved, getUserDetailsResponse: $getUserDetailsResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.isCurrentUserProfile, isCurrentUserProfile) ||
                other.isCurrentUserProfile == isCurrentUserProfile) &&
            (identical(other.isFriend, isFriend) ||
                other.isFriend == isFriend) &&
            (identical(other.isFriendRequestSent, isFriendRequestSent) ||
                other.isFriendRequestSent == isFriendRequestSent) &&
            (identical(other.isPageLoading, isPageLoading) ||
                other.isPageLoading == isPageLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.friendId, friendId) ||
                other.friendId == friendId) &&
            (identical(
                    other.isFriendRequestRecieved, isFriendRequestRecieved) ||
                other.isFriendRequestRecieved == isFriendRequestRecieved) &&
            (identical(other.getUserDetailsResponse, getUserDetailsResponse) ||
                other.getUserDetailsResponse == getUserDetailsResponse));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      firstName,
      lastName,
      username,
      isCurrentUserProfile,
      isFriend,
      isFriendRequestSent,
      isPageLoading,
      errorMessage,
      friendId,
      isFriendRequestRecieved,
      getUserDetailsResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firstName,
            String lastName,
            String username,
            bool isCurrentUserProfile,
            bool? isFriend,
            bool? isFriendRequestSent,
            bool isPageLoading,
            String? errorMessage,
            String? friendId,
            bool? isFriendRequestRecieved,
            GetUserDetailsResponseModel? getUserDetailsResponse)
        initial,
  }) {
    return initial(
        firstName,
        lastName,
        username,
        isCurrentUserProfile,
        isFriend,
        isFriendRequestSent,
        isPageLoading,
        errorMessage,
        friendId,
        isFriendRequestRecieved,
        getUserDetailsResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String firstName,
            String lastName,
            String username,
            bool isCurrentUserProfile,
            bool? isFriend,
            bool? isFriendRequestSent,
            bool isPageLoading,
            String? errorMessage,
            String? friendId,
            bool? isFriendRequestRecieved,
            GetUserDetailsResponseModel? getUserDetailsResponse)?
        initial,
  }) {
    return initial?.call(
        firstName,
        lastName,
        username,
        isCurrentUserProfile,
        isFriend,
        isFriendRequestSent,
        isPageLoading,
        errorMessage,
        friendId,
        isFriendRequestRecieved,
        getUserDetailsResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firstName,
            String lastName,
            String username,
            bool isCurrentUserProfile,
            bool? isFriend,
            bool? isFriendRequestSent,
            bool isPageLoading,
            String? errorMessage,
            String? friendId,
            bool? isFriendRequestRecieved,
            GetUserDetailsResponseModel? getUserDetailsResponse)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          firstName,
          lastName,
          username,
          isCurrentUserProfile,
          isFriend,
          isFriendRequestSent,
          isPageLoading,
          errorMessage,
          friendId,
          isFriendRequestRecieved,
          getUserDetailsResponse);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProfilePageState {
  const factory _Initial(
      {required final String firstName,
      required final String lastName,
      required final String username,
      required final bool isCurrentUserProfile,
      final bool? isFriend,
      final bool? isFriendRequestSent,
      required final bool isPageLoading,
      final String? errorMessage,
      final String? friendId,
      final bool? isFriendRequestRecieved,
      final GetUserDetailsResponseModel? getUserDetailsResponse}) = _$_Initial;

  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get username;
  @override
  bool get isCurrentUserProfile;
  @override
  bool? get isFriend;
  @override
  bool? get isFriendRequestSent;
  @override
  bool get isPageLoading;
  @override
  String? get errorMessage;
  @override
  String? get friendId;
  @override
  bool? get isFriendRequestRecieved;
  @override
  GetUserDetailsResponseModel? get getUserDetailsResponse;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
