// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'notification_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NotificationPageEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() initializeNotificationPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? initializeNotificationPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? initializeNotificationPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(InitializeNotificationPage value)
        initializeNotificationPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(InitializeNotificationPage value)?
        initializeNotificationPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(InitializeNotificationPage value)?
        initializeNotificationPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPageEventCopyWith<$Res> {
  factory $NotificationPageEventCopyWith(NotificationPageEvent value,
          $Res Function(NotificationPageEvent) then) =
      _$NotificationPageEventCopyWithImpl<$Res, NotificationPageEvent>;
}

/// @nodoc
class _$NotificationPageEventCopyWithImpl<$Res,
        $Val extends NotificationPageEvent>
    implements $NotificationPageEventCopyWith<$Res> {
  _$NotificationPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$NotificationPageEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'NotificationPageEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() initializeNotificationPage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? initializeNotificationPage,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? initializeNotificationPage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(InitializeNotificationPage value)
        initializeNotificationPage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(InitializeNotificationPage value)?
        initializeNotificationPage,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(InitializeNotificationPage value)?
        initializeNotificationPage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NotificationPageEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$InitializeNotificationPageCopyWith<$Res> {
  factory _$$InitializeNotificationPageCopyWith(
          _$InitializeNotificationPage value,
          $Res Function(_$InitializeNotificationPage) then) =
      __$$InitializeNotificationPageCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeNotificationPageCopyWithImpl<$Res>
    extends _$NotificationPageEventCopyWithImpl<$Res,
        _$InitializeNotificationPage>
    implements _$$InitializeNotificationPageCopyWith<$Res> {
  __$$InitializeNotificationPageCopyWithImpl(
      _$InitializeNotificationPage _value,
      $Res Function(_$InitializeNotificationPage) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeNotificationPage implements InitializeNotificationPage {
  const _$InitializeNotificationPage();

  @override
  String toString() {
    return 'NotificationPageEvent.initializeNotificationPage()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitializeNotificationPage);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() initializeNotificationPage,
  }) {
    return initializeNotificationPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? initializeNotificationPage,
  }) {
    return initializeNotificationPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? initializeNotificationPage,
    required TResult orElse(),
  }) {
    if (initializeNotificationPage != null) {
      return initializeNotificationPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(InitializeNotificationPage value)
        initializeNotificationPage,
  }) {
    return initializeNotificationPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(InitializeNotificationPage value)?
        initializeNotificationPage,
  }) {
    return initializeNotificationPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(InitializeNotificationPage value)?
        initializeNotificationPage,
    required TResult orElse(),
  }) {
    if (initializeNotificationPage != null) {
      return initializeNotificationPage(this);
    }
    return orElse();
  }
}

abstract class InitializeNotificationPage implements NotificationPageEvent {
  const factory InitializeNotificationPage() = _$InitializeNotificationPage;
}

/// @nodoc
mixin _$NotificationPageState {
  bool get isLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  NotificationsResponseModel? get notificationsResponse =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, String? errorMessage,
            NotificationsResponseModel? notificationsResponse)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, String? errorMessage,
            NotificationsResponseModel? notificationsResponse)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, String? errorMessage,
            NotificationsResponseModel? notificationsResponse)?
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
  $NotificationPageStateCopyWith<NotificationPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationPageStateCopyWith<$Res> {
  factory $NotificationPageStateCopyWith(NotificationPageState value,
          $Res Function(NotificationPageState) then) =
      _$NotificationPageStateCopyWithImpl<$Res, NotificationPageState>;
  @useResult
  $Res call(
      {bool isLoading,
      String? errorMessage,
      NotificationsResponseModel? notificationsResponse});
}

/// @nodoc
class _$NotificationPageStateCopyWithImpl<$Res,
        $Val extends NotificationPageState>
    implements $NotificationPageStateCopyWith<$Res> {
  _$NotificationPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? notificationsResponse = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationsResponse: freezed == notificationsResponse
          ? _value.notificationsResponse
          : notificationsResponse // ignore: cast_nullable_to_non_nullable
              as NotificationsResponseModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $NotificationPageStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      String? errorMessage,
      NotificationsResponseModel? notificationsResponse});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$NotificationPageStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? errorMessage = freezed,
    Object? notificationsResponse = freezed,
  }) {
    return _then(_$_Initial(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      notificationsResponse: freezed == notificationsResponse
          ? _value.notificationsResponse
          : notificationsResponse // ignore: cast_nullable_to_non_nullable
              as NotificationsResponseModel?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {required this.isLoading, this.errorMessage, this.notificationsResponse});

  @override
  final bool isLoading;
  @override
  final String? errorMessage;
  @override
  final NotificationsResponseModel? notificationsResponse;

  @override
  String toString() {
    return 'NotificationPageState.initial(isLoading: $isLoading, errorMessage: $errorMessage, notificationsResponse: $notificationsResponse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.notificationsResponse, notificationsResponse) ||
                other.notificationsResponse == notificationsResponse));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isLoading, errorMessage, notificationsResponse);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isLoading, String? errorMessage,
            NotificationsResponseModel? notificationsResponse)
        initial,
  }) {
    return initial(isLoading, errorMessage, notificationsResponse);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isLoading, String? errorMessage,
            NotificationsResponseModel? notificationsResponse)?
        initial,
  }) {
    return initial?.call(isLoading, errorMessage, notificationsResponse);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isLoading, String? errorMessage,
            NotificationsResponseModel? notificationsResponse)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isLoading, errorMessage, notificationsResponse);
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

abstract class _Initial implements NotificationPageState {
  const factory _Initial(
      {required final bool isLoading,
      final String? errorMessage,
      final NotificationsResponseModel? notificationsResponse}) = _$_Initial;

  @override
  bool get isLoading;
  @override
  String? get errorMessage;
  @override
  NotificationsResponseModel? get notificationsResponse;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
