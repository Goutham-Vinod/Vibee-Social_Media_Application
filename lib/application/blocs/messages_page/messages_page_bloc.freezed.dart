// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'messages_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MessagesPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeMessagePage,
    required TResult Function() checkOnlineUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeMessagePage,
    TResult? Function()? checkOnlineUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeMessagePage,
    TResult Function()? checkOnlineUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeMessagePage value)
        initializeMessagePage,
    required TResult Function(_CheckOnlineUsers value) checkOnlineUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeMessagePage value)? initializeMessagePage,
    TResult? Function(_CheckOnlineUsers value)? checkOnlineUsers,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeMessagePage value)? initializeMessagePage,
    TResult Function(_CheckOnlineUsers value)? checkOnlineUsers,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesPageEventCopyWith<$Res> {
  factory $MessagesPageEventCopyWith(
          MessagesPageEvent value, $Res Function(MessagesPageEvent) then) =
      _$MessagesPageEventCopyWithImpl<$Res, MessagesPageEvent>;
}

/// @nodoc
class _$MessagesPageEventCopyWithImpl<$Res, $Val extends MessagesPageEvent>
    implements $MessagesPageEventCopyWith<$Res> {
  _$MessagesPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializeMessagePageCopyWith<$Res> {
  factory _$$_InitializeMessagePageCopyWith(_$_InitializeMessagePage value,
          $Res Function(_$_InitializeMessagePage) then) =
      __$$_InitializeMessagePageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitializeMessagePageCopyWithImpl<$Res>
    extends _$MessagesPageEventCopyWithImpl<$Res, _$_InitializeMessagePage>
    implements _$$_InitializeMessagePageCopyWith<$Res> {
  __$$_InitializeMessagePageCopyWithImpl(_$_InitializeMessagePage _value,
      $Res Function(_$_InitializeMessagePage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_InitializeMessagePage implements _InitializeMessagePage {
  const _$_InitializeMessagePage();

  @override
  String toString() {
    return 'MessagesPageEvent.initializeMessagePage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_InitializeMessagePage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeMessagePage,
    required TResult Function() checkOnlineUsers,
  }) {
    return initializeMessagePage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeMessagePage,
    TResult? Function()? checkOnlineUsers,
  }) {
    return initializeMessagePage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeMessagePage,
    TResult Function()? checkOnlineUsers,
    required TResult orElse(),
  }) {
    if (initializeMessagePage != null) {
      return initializeMessagePage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeMessagePage value)
        initializeMessagePage,
    required TResult Function(_CheckOnlineUsers value) checkOnlineUsers,
  }) {
    return initializeMessagePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeMessagePage value)? initializeMessagePage,
    TResult? Function(_CheckOnlineUsers value)? checkOnlineUsers,
  }) {
    return initializeMessagePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeMessagePage value)? initializeMessagePage,
    TResult Function(_CheckOnlineUsers value)? checkOnlineUsers,
    required TResult orElse(),
  }) {
    if (initializeMessagePage != null) {
      return initializeMessagePage(this);
    }
    return orElse();
  }
}

abstract class _InitializeMessagePage implements MessagesPageEvent {
  const factory _InitializeMessagePage() = _$_InitializeMessagePage;
}

/// @nodoc
abstract class _$$_CheckOnlineUsersCopyWith<$Res> {
  factory _$$_CheckOnlineUsersCopyWith(
          _$_CheckOnlineUsers value, $Res Function(_$_CheckOnlineUsers) then) =
      __$$_CheckOnlineUsersCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckOnlineUsersCopyWithImpl<$Res>
    extends _$MessagesPageEventCopyWithImpl<$Res, _$_CheckOnlineUsers>
    implements _$$_CheckOnlineUsersCopyWith<$Res> {
  __$$_CheckOnlineUsersCopyWithImpl(
      _$_CheckOnlineUsers _value, $Res Function(_$_CheckOnlineUsers) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckOnlineUsers implements _CheckOnlineUsers {
  const _$_CheckOnlineUsers();

  @override
  String toString() {
    return 'MessagesPageEvent.checkOnlineUsers()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckOnlineUsers);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeMessagePage,
    required TResult Function() checkOnlineUsers,
  }) {
    return checkOnlineUsers();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeMessagePage,
    TResult? Function()? checkOnlineUsers,
  }) {
    return checkOnlineUsers?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeMessagePage,
    TResult Function()? checkOnlineUsers,
    required TResult orElse(),
  }) {
    if (checkOnlineUsers != null) {
      return checkOnlineUsers();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeMessagePage value)
        initializeMessagePage,
    required TResult Function(_CheckOnlineUsers value) checkOnlineUsers,
  }) {
    return checkOnlineUsers(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeMessagePage value)? initializeMessagePage,
    TResult? Function(_CheckOnlineUsers value)? checkOnlineUsers,
  }) {
    return checkOnlineUsers?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeMessagePage value)? initializeMessagePage,
    TResult Function(_CheckOnlineUsers value)? checkOnlineUsers,
    required TResult orElse(),
  }) {
    if (checkOnlineUsers != null) {
      return checkOnlineUsers(this);
    }
    return orElse();
  }
}

abstract class _CheckOnlineUsers implements MessagesPageEvent {
  const factory _CheckOnlineUsers() = _$_CheckOnlineUsers;
}

/// @nodoc
mixin _$MessagesPageState {
  bool get isPageLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<GetAllConversationsResponseModel>? get getAllConversationsResponse =>
      throw _privateConstructorUsedError;
  List<String>? get onlineFriendsIdList => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isPageLoading,
            String? errorMessage,
            List<GetAllConversationsResponseModel>? getAllConversationsResponse,
            List<String>? onlineFriendsIdList)
        currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isPageLoading,
            String? errorMessage,
            List<GetAllConversationsResponseModel>? getAllConversationsResponse,
            List<String>? onlineFriendsIdList)?
        currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isPageLoading,
            String? errorMessage,
            List<GetAllConversationsResponseModel>? getAllConversationsResponse,
            List<String>? onlineFriendsIdList)?
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
  $MessagesPageStateCopyWith<MessagesPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagesPageStateCopyWith<$Res> {
  factory $MessagesPageStateCopyWith(
          MessagesPageState value, $Res Function(MessagesPageState) then) =
      _$MessagesPageStateCopyWithImpl<$Res, MessagesPageState>;
  @useResult
  $Res call(
      {bool isPageLoading,
      String? errorMessage,
      List<GetAllConversationsResponseModel>? getAllConversationsResponse,
      List<String>? onlineFriendsIdList});
}

/// @nodoc
class _$MessagesPageStateCopyWithImpl<$Res, $Val extends MessagesPageState>
    implements $MessagesPageStateCopyWith<$Res> {
  _$MessagesPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPageLoading = null,
    Object? errorMessage = freezed,
    Object? getAllConversationsResponse = freezed,
    Object? onlineFriendsIdList = freezed,
  }) {
    return _then(_value.copyWith(
      isPageLoading: null == isPageLoading
          ? _value.isPageLoading
          : isPageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      getAllConversationsResponse: freezed == getAllConversationsResponse
          ? _value.getAllConversationsResponse
          : getAllConversationsResponse // ignore: cast_nullable_to_non_nullable
              as List<GetAllConversationsResponseModel>?,
      onlineFriendsIdList: freezed == onlineFriendsIdList
          ? _value.onlineFriendsIdList
          : onlineFriendsIdList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentStateCopyWith<$Res>
    implements $MessagesPageStateCopyWith<$Res> {
  factory _$$_CurrentStateCopyWith(
          _$_CurrentState value, $Res Function(_$_CurrentState) then) =
      __$$_CurrentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isPageLoading,
      String? errorMessage,
      List<GetAllConversationsResponseModel>? getAllConversationsResponse,
      List<String>? onlineFriendsIdList});
}

/// @nodoc
class __$$_CurrentStateCopyWithImpl<$Res>
    extends _$MessagesPageStateCopyWithImpl<$Res, _$_CurrentState>
    implements _$$_CurrentStateCopyWith<$Res> {
  __$$_CurrentStateCopyWithImpl(
      _$_CurrentState _value, $Res Function(_$_CurrentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPageLoading = null,
    Object? errorMessage = freezed,
    Object? getAllConversationsResponse = freezed,
    Object? onlineFriendsIdList = freezed,
  }) {
    return _then(_$_CurrentState(
      isPageLoading: null == isPageLoading
          ? _value.isPageLoading
          : isPageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      getAllConversationsResponse: freezed == getAllConversationsResponse
          ? _value._getAllConversationsResponse
          : getAllConversationsResponse // ignore: cast_nullable_to_non_nullable
              as List<GetAllConversationsResponseModel>?,
      onlineFriendsIdList: freezed == onlineFriendsIdList
          ? _value._onlineFriendsIdList
          : onlineFriendsIdList // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc

class _$_CurrentState implements _CurrentState {
  const _$_CurrentState(
      {required this.isPageLoading,
      this.errorMessage,
      final List<GetAllConversationsResponseModel>? getAllConversationsResponse,
      final List<String>? onlineFriendsIdList})
      : _getAllConversationsResponse = getAllConversationsResponse,
        _onlineFriendsIdList = onlineFriendsIdList;

  @override
  final bool isPageLoading;
  @override
  final String? errorMessage;
  final List<GetAllConversationsResponseModel>? _getAllConversationsResponse;
  @override
  List<GetAllConversationsResponseModel>? get getAllConversationsResponse {
    final value = _getAllConversationsResponse;
    if (value == null) return null;
    if (_getAllConversationsResponse is EqualUnmodifiableListView)
      return _getAllConversationsResponse;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<String>? _onlineFriendsIdList;
  @override
  List<String>? get onlineFriendsIdList {
    final value = _onlineFriendsIdList;
    if (value == null) return null;
    if (_onlineFriendsIdList is EqualUnmodifiableListView)
      return _onlineFriendsIdList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MessagesPageState.currentState(isPageLoading: $isPageLoading, errorMessage: $errorMessage, getAllConversationsResponse: $getAllConversationsResponse, onlineFriendsIdList: $onlineFriendsIdList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentState &&
            (identical(other.isPageLoading, isPageLoading) ||
                other.isPageLoading == isPageLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(
                other._getAllConversationsResponse,
                _getAllConversationsResponse) &&
            const DeepCollectionEquality()
                .equals(other._onlineFriendsIdList, _onlineFriendsIdList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isPageLoading,
      errorMessage,
      const DeepCollectionEquality().hash(_getAllConversationsResponse),
      const DeepCollectionEquality().hash(_onlineFriendsIdList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrentStateCopyWith<_$_CurrentState> get copyWith =>
      __$$_CurrentStateCopyWithImpl<_$_CurrentState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isPageLoading,
            String? errorMessage,
            List<GetAllConversationsResponseModel>? getAllConversationsResponse,
            List<String>? onlineFriendsIdList)
        currentState,
  }) {
    return currentState(isPageLoading, errorMessage,
        getAllConversationsResponse, onlineFriendsIdList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isPageLoading,
            String? errorMessage,
            List<GetAllConversationsResponseModel>? getAllConversationsResponse,
            List<String>? onlineFriendsIdList)?
        currentState,
  }) {
    return currentState?.call(isPageLoading, errorMessage,
        getAllConversationsResponse, onlineFriendsIdList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isPageLoading,
            String? errorMessage,
            List<GetAllConversationsResponseModel>? getAllConversationsResponse,
            List<String>? onlineFriendsIdList)?
        currentState,
    required TResult orElse(),
  }) {
    if (currentState != null) {
      return currentState(isPageLoading, errorMessage,
          getAllConversationsResponse, onlineFriendsIdList);
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

abstract class _CurrentState implements MessagesPageState {
  const factory _CurrentState(
      {required final bool isPageLoading,
      final String? errorMessage,
      final List<GetAllConversationsResponseModel>? getAllConversationsResponse,
      final List<String>? onlineFriendsIdList}) = _$_CurrentState;

  @override
  bool get isPageLoading;
  @override
  String? get errorMessage;
  @override
  List<GetAllConversationsResponseModel>? get getAllConversationsResponse;
  @override
  List<String>? get onlineFriendsIdList;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentStateCopyWith<_$_CurrentState> get copyWith =>
      throw _privateConstructorUsedError;
}
