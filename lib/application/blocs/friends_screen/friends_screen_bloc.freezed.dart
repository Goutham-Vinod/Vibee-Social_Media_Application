// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'friends_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$FriendsScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializePage,
    required TResult Function(int friendIndex) unfriend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializePage,
    TResult? Function(int friendIndex)? unfriend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializePage,
    TResult Function(int friendIndex)? unfriend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializePage value) initializePage,
    required TResult Function(_Unfriend value) unfriend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializePage value)? initializePage,
    TResult? Function(_Unfriend value)? unfriend,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializePage value)? initializePage,
    TResult Function(_Unfriend value)? unfriend,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsScreenEventCopyWith<$Res> {
  factory $FriendsScreenEventCopyWith(
          FriendsScreenEvent value, $Res Function(FriendsScreenEvent) then) =
      _$FriendsScreenEventCopyWithImpl<$Res, FriendsScreenEvent>;
}

/// @nodoc
class _$FriendsScreenEventCopyWithImpl<$Res, $Val extends FriendsScreenEvent>
    implements $FriendsScreenEventCopyWith<$Res> {
  _$FriendsScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializePageCopyWith<$Res> {
  factory _$$_InitializePageCopyWith(
          _$_InitializePage value, $Res Function(_$_InitializePage) then) =
      __$$_InitializePageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitializePageCopyWithImpl<$Res>
    extends _$FriendsScreenEventCopyWithImpl<$Res, _$_InitializePage>
    implements _$$_InitializePageCopyWith<$Res> {
  __$$_InitializePageCopyWithImpl(
      _$_InitializePage _value, $Res Function(_$_InitializePage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitializePage implements _InitializePage {
  const _$_InitializePage();

  @override
  String toString() {
    return 'FriendsScreenEvent.initializePage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitializePage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializePage,
    required TResult Function(int friendIndex) unfriend,
  }) {
    return initializePage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializePage,
    TResult? Function(int friendIndex)? unfriend,
  }) {
    return initializePage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializePage,
    TResult Function(int friendIndex)? unfriend,
    required TResult orElse(),
  }) {
    if (initializePage != null) {
      return initializePage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializePage value) initializePage,
    required TResult Function(_Unfriend value) unfriend,
  }) {
    return initializePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializePage value)? initializePage,
    TResult? Function(_Unfriend value)? unfriend,
  }) {
    return initializePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializePage value)? initializePage,
    TResult Function(_Unfriend value)? unfriend,
    required TResult orElse(),
  }) {
    if (initializePage != null) {
      return initializePage(this);
    }
    return orElse();
  }
}

abstract class _InitializePage implements FriendsScreenEvent {
  const factory _InitializePage() = _$_InitializePage;
}

/// @nodoc
abstract class _$$_UnfriendCopyWith<$Res> {
  factory _$$_UnfriendCopyWith(
          _$_Unfriend value, $Res Function(_$_Unfriend) then) =
      __$$_UnfriendCopyWithImpl<$Res>;
  @useResult
  $Res call({int friendIndex});
}

/// @nodoc
class __$$_UnfriendCopyWithImpl<$Res>
    extends _$FriendsScreenEventCopyWithImpl<$Res, _$_Unfriend>
    implements _$$_UnfriendCopyWith<$Res> {
  __$$_UnfriendCopyWithImpl(
      _$_Unfriend _value, $Res Function(_$_Unfriend) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friendIndex = null,
  }) {
    return _then(_$_Unfriend(
      friendIndex: null == friendIndex
          ? _value.friendIndex
          : friendIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Unfriend implements _Unfriend {
  const _$_Unfriend({required this.friendIndex});

  @override
  final int friendIndex;

  @override
  String toString() {
    return 'FriendsScreenEvent.unfriend(friendIndex: $friendIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Unfriend &&
            (identical(other.friendIndex, friendIndex) ||
                other.friendIndex == friendIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, friendIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UnfriendCopyWith<_$_Unfriend> get copyWith =>
      __$$_UnfriendCopyWithImpl<_$_Unfriend>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializePage,
    required TResult Function(int friendIndex) unfriend,
  }) {
    return unfriend(friendIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializePage,
    TResult? Function(int friendIndex)? unfriend,
  }) {
    return unfriend?.call(friendIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializePage,
    TResult Function(int friendIndex)? unfriend,
    required TResult orElse(),
  }) {
    if (unfriend != null) {
      return unfriend(friendIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializePage value) initializePage,
    required TResult Function(_Unfriend value) unfriend,
  }) {
    return unfriend(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializePage value)? initializePage,
    TResult? Function(_Unfriend value)? unfriend,
  }) {
    return unfriend?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializePage value)? initializePage,
    TResult Function(_Unfriend value)? unfriend,
    required TResult orElse(),
  }) {
    if (unfriend != null) {
      return unfriend(this);
    }
    return orElse();
  }
}

abstract class _Unfriend implements FriendsScreenEvent {
  const factory _Unfriend({required final int friendIndex}) = _$_Unfriend;

  int get friendIndex;
  @JsonKey(ignore: true)
  _$$_UnfriendCopyWith<_$_Unfriend> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$FriendsScreenState {
  List<FriendsListResponseModel>? get friendsListResponse =>
      throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get showMessage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<FriendsListResponseModel>? friendsListResponse,
            String? errorMessage,
            String? showMessage)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FriendsListResponseModel>? friendsListResponse,
            String? errorMessage, String? showMessage)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FriendsListResponseModel>? friendsListResponse,
            String? errorMessage, String? showMessage)?
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
  $FriendsScreenStateCopyWith<FriendsScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FriendsScreenStateCopyWith<$Res> {
  factory $FriendsScreenStateCopyWith(
          FriendsScreenState value, $Res Function(FriendsScreenState) then) =
      _$FriendsScreenStateCopyWithImpl<$Res, FriendsScreenState>;
  @useResult
  $Res call(
      {List<FriendsListResponseModel>? friendsListResponse,
      String? errorMessage,
      String? showMessage});
}

/// @nodoc
class _$FriendsScreenStateCopyWithImpl<$Res, $Val extends FriendsScreenState>
    implements $FriendsScreenStateCopyWith<$Res> {
  _$FriendsScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friendsListResponse = freezed,
    Object? errorMessage = freezed,
    Object? showMessage = freezed,
  }) {
    return _then(_value.copyWith(
      friendsListResponse: freezed == friendsListResponse
          ? _value.friendsListResponse
          : friendsListResponse // ignore: cast_nullable_to_non_nullable
              as List<FriendsListResponseModel>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      showMessage: freezed == showMessage
          ? _value.showMessage
          : showMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $FriendsScreenStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FriendsListResponseModel>? friendsListResponse,
      String? errorMessage,
      String? showMessage});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$FriendsScreenStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? friendsListResponse = freezed,
    Object? errorMessage = freezed,
    Object? showMessage = freezed,
  }) {
    return _then(_$_Initial(
      friendsListResponse: freezed == friendsListResponse
          ? _value._friendsListResponse
          : friendsListResponse // ignore: cast_nullable_to_non_nullable
              as List<FriendsListResponseModel>?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      showMessage: freezed == showMessage
          ? _value.showMessage
          : showMessage // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {final List<FriendsListResponseModel>? friendsListResponse,
      this.errorMessage,
      this.showMessage})
      : _friendsListResponse = friendsListResponse;

  final List<FriendsListResponseModel>? _friendsListResponse;
  @override
  List<FriendsListResponseModel>? get friendsListResponse {
    final value = _friendsListResponse;
    if (value == null) return null;
    if (_friendsListResponse is EqualUnmodifiableListView)
      return _friendsListResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? errorMessage;
  @override
  final String? showMessage;

  @override
  String toString() {
    return 'FriendsScreenState.initial(friendsListResponse: $friendsListResponse, errorMessage: $errorMessage, showMessage: $showMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            const DeepCollectionEquality()
                .equals(other._friendsListResponse, _friendsListResponse) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.showMessage, showMessage) ||
                other.showMessage == showMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_friendsListResponse),
      errorMessage,
      showMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            List<FriendsListResponseModel>? friendsListResponse,
            String? errorMessage,
            String? showMessage)
        initial,
  }) {
    return initial(friendsListResponse, errorMessage, showMessage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<FriendsListResponseModel>? friendsListResponse,
            String? errorMessage, String? showMessage)?
        initial,
  }) {
    return initial?.call(friendsListResponse, errorMessage, showMessage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<FriendsListResponseModel>? friendsListResponse,
            String? errorMessage, String? showMessage)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(friendsListResponse, errorMessage, showMessage);
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

abstract class _Initial implements FriendsScreenState {
  const factory _Initial(
      {final List<FriendsListResponseModel>? friendsListResponse,
      final String? errorMessage,
      final String? showMessage}) = _$_Initial;

  @override
  List<FriendsListResponseModel>? get friendsListResponse;
  @override
  String? get errorMessage;
  @override
  String? get showMessage;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
