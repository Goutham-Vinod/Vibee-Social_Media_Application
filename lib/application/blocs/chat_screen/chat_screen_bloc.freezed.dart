// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ChatScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId) initializeScreen,
    required TResult Function(String? message) sendMessage,
    required TResult Function() iSOnline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId)? initializeScreen,
    TResult? Function(String? message)? sendMessage,
    TResult? Function()? iSOnline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId)? initializeScreen,
    TResult Function(String? message)? sendMessage,
    TResult Function()? iSOnline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeScreen value) initializeScreen,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_IsOnline value) iSOnline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeScreen value)? initializeScreen,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_IsOnline value)? iSOnline,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeScreen value)? initializeScreen,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_IsOnline value)? iSOnline,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatScreenEventCopyWith<$Res> {
  factory $ChatScreenEventCopyWith(
          ChatScreenEvent value, $Res Function(ChatScreenEvent) then) =
      _$ChatScreenEventCopyWithImpl<$Res, ChatScreenEvent>;
}

/// @nodoc
class _$ChatScreenEventCopyWithImpl<$Res, $Val extends ChatScreenEvent>
    implements $ChatScreenEventCopyWith<$Res> {
  _$ChatScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitializeScreenCopyWith<$Res> {
  factory _$$_InitializeScreenCopyWith(
          _$_InitializeScreen value, $Res Function(_$_InitializeScreen) then) =
      __$$_InitializeScreenCopyWithImpl<$Res>;
  @useResult
  $Res call({String chatId});
}

/// @nodoc
class __$$_InitializeScreenCopyWithImpl<$Res>
    extends _$ChatScreenEventCopyWithImpl<$Res, _$_InitializeScreen>
    implements _$$_InitializeScreenCopyWith<$Res> {
  __$$_InitializeScreenCopyWithImpl(
      _$_InitializeScreen _value, $Res Function(_$_InitializeScreen) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chatId = null,
  }) {
    return _then(_$_InitializeScreen(
      chatId: null == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitializeScreen implements _InitializeScreen {
  const _$_InitializeScreen({required this.chatId});

  @override
  final String chatId;

  @override
  String toString() {
    return 'ChatScreenEvent.initializeScreen(chatId: $chatId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitializeScreen &&
            (identical(other.chatId, chatId) || other.chatId == chatId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, chatId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializeScreenCopyWith<_$_InitializeScreen> get copyWith =>
      __$$_InitializeScreenCopyWithImpl<_$_InitializeScreen>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId) initializeScreen,
    required TResult Function(String? message) sendMessage,
    required TResult Function() iSOnline,
  }) {
    return initializeScreen(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId)? initializeScreen,
    TResult? Function(String? message)? sendMessage,
    TResult? Function()? iSOnline,
  }) {
    return initializeScreen?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId)? initializeScreen,
    TResult Function(String? message)? sendMessage,
    TResult Function()? iSOnline,
    required TResult orElse(),
  }) {
    if (initializeScreen != null) {
      return initializeScreen(chatId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeScreen value) initializeScreen,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_IsOnline value) iSOnline,
  }) {
    return initializeScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeScreen value)? initializeScreen,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_IsOnline value)? iSOnline,
  }) {
    return initializeScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeScreen value)? initializeScreen,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_IsOnline value)? iSOnline,
    required TResult orElse(),
  }) {
    if (initializeScreen != null) {
      return initializeScreen(this);
    }
    return orElse();
  }
}

abstract class _InitializeScreen implements ChatScreenEvent {
  const factory _InitializeScreen({required final String chatId}) =
      _$_InitializeScreen;

  String get chatId;
  @JsonKey(ignore: true)
  _$$_InitializeScreenCopyWith<_$_InitializeScreen> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SendMessageCopyWith<$Res> {
  factory _$$_SendMessageCopyWith(
          _$_SendMessage value, $Res Function(_$_SendMessage) then) =
      __$$_SendMessageCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$_SendMessageCopyWithImpl<$Res>
    extends _$ChatScreenEventCopyWithImpl<$Res, _$_SendMessage>
    implements _$$_SendMessageCopyWith<$Res> {
  __$$_SendMessageCopyWithImpl(
      _$_SendMessage _value, $Res Function(_$_SendMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_SendMessage(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_SendMessage implements _SendMessage {
  const _$_SendMessage({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'ChatScreenEvent.sendMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendMessage &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendMessageCopyWith<_$_SendMessage> get copyWith =>
      __$$_SendMessageCopyWithImpl<_$_SendMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId) initializeScreen,
    required TResult Function(String? message) sendMessage,
    required TResult Function() iSOnline,
  }) {
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId)? initializeScreen,
    TResult? Function(String? message)? sendMessage,
    TResult? Function()? iSOnline,
  }) {
    return sendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId)? initializeScreen,
    TResult Function(String? message)? sendMessage,
    TResult Function()? iSOnline,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeScreen value) initializeScreen,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_IsOnline value) iSOnline,
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeScreen value)? initializeScreen,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_IsOnline value)? iSOnline,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeScreen value)? initializeScreen,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_IsOnline value)? iSOnline,
    required TResult orElse(),
  }) {
    if (sendMessage != null) {
      return sendMessage(this);
    }
    return orElse();
  }
}

abstract class _SendMessage implements ChatScreenEvent {
  const factory _SendMessage({final String? message}) = _$_SendMessage;

  String? get message;
  @JsonKey(ignore: true)
  _$$_SendMessageCopyWith<_$_SendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IsOnlineCopyWith<$Res> {
  factory _$$_IsOnlineCopyWith(
          _$_IsOnline value, $Res Function(_$_IsOnline) then) =
      __$$_IsOnlineCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IsOnlineCopyWithImpl<$Res>
    extends _$ChatScreenEventCopyWithImpl<$Res, _$_IsOnline>
    implements _$$_IsOnlineCopyWith<$Res> {
  __$$_IsOnlineCopyWithImpl(
      _$_IsOnline _value, $Res Function(_$_IsOnline) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IsOnline implements _IsOnline {
  const _$_IsOnline();

  @override
  String toString() {
    return 'ChatScreenEvent.iSOnline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IsOnline);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String chatId) initializeScreen,
    required TResult Function(String? message) sendMessage,
    required TResult Function() iSOnline,
  }) {
    return iSOnline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId)? initializeScreen,
    TResult? Function(String? message)? sendMessage,
    TResult? Function()? iSOnline,
  }) {
    return iSOnline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId)? initializeScreen,
    TResult Function(String? message)? sendMessage,
    TResult Function()? iSOnline,
    required TResult orElse(),
  }) {
    if (iSOnline != null) {
      return iSOnline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeScreen value) initializeScreen,
    required TResult Function(_SendMessage value) sendMessage,
    required TResult Function(_IsOnline value) iSOnline,
  }) {
    return iSOnline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeScreen value)? initializeScreen,
    TResult? Function(_SendMessage value)? sendMessage,
    TResult? Function(_IsOnline value)? iSOnline,
  }) {
    return iSOnline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeScreen value)? initializeScreen,
    TResult Function(_SendMessage value)? sendMessage,
    TResult Function(_IsOnline value)? iSOnline,
    required TResult orElse(),
  }) {
    if (iSOnline != null) {
      return iSOnline(this);
    }
    return orElse();
  }
}

abstract class _IsOnline implements ChatScreenEvent {
  const factory _IsOnline() = _$_IsOnline;
}

/// @nodoc
mixin _$ChatScreenState {
  bool get isPageLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  GetMessageResponseModel? get getMessageResponse =>
      throw _privateConstructorUsedError;
  bool? get isOnline => throw _privateConstructorUsedError;
  bool? get isMessageSentOrRecieved => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isPageLoading,
            String? errorMessage,
            GetMessageResponseModel? getMessageResponse,
            bool? isOnline,
            bool? isMessageSentOrRecieved)
        currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isPageLoading,
            String? errorMessage,
            GetMessageResponseModel? getMessageResponse,
            bool? isOnline,
            bool? isMessageSentOrRecieved)?
        currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isPageLoading,
            String? errorMessage,
            GetMessageResponseModel? getMessageResponse,
            bool? isOnline,
            bool? isMessageSentOrRecieved)?
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
  $ChatScreenStateCopyWith<ChatScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatScreenStateCopyWith<$Res> {
  factory $ChatScreenStateCopyWith(
          ChatScreenState value, $Res Function(ChatScreenState) then) =
      _$ChatScreenStateCopyWithImpl<$Res, ChatScreenState>;
  @useResult
  $Res call(
      {bool isPageLoading,
      String? errorMessage,
      GetMessageResponseModel? getMessageResponse,
      bool? isOnline,
      bool? isMessageSentOrRecieved});
}

/// @nodoc
class _$ChatScreenStateCopyWithImpl<$Res, $Val extends ChatScreenState>
    implements $ChatScreenStateCopyWith<$Res> {
  _$ChatScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPageLoading = null,
    Object? errorMessage = freezed,
    Object? getMessageResponse = freezed,
    Object? isOnline = freezed,
    Object? isMessageSentOrRecieved = freezed,
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
      getMessageResponse: freezed == getMessageResponse
          ? _value.getMessageResponse
          : getMessageResponse // ignore: cast_nullable_to_non_nullable
              as GetMessageResponseModel?,
      isOnline: freezed == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMessageSentOrRecieved: freezed == isMessageSentOrRecieved
          ? _value.isMessageSentOrRecieved
          : isMessageSentOrRecieved // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentStateCopyWith<$Res>
    implements $ChatScreenStateCopyWith<$Res> {
  factory _$$_CurrentStateCopyWith(
          _$_CurrentState value, $Res Function(_$_CurrentState) then) =
      __$$_CurrentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isPageLoading,
      String? errorMessage,
      GetMessageResponseModel? getMessageResponse,
      bool? isOnline,
      bool? isMessageSentOrRecieved});
}

/// @nodoc
class __$$_CurrentStateCopyWithImpl<$Res>
    extends _$ChatScreenStateCopyWithImpl<$Res, _$_CurrentState>
    implements _$$_CurrentStateCopyWith<$Res> {
  __$$_CurrentStateCopyWithImpl(
      _$_CurrentState _value, $Res Function(_$_CurrentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPageLoading = null,
    Object? errorMessage = freezed,
    Object? getMessageResponse = freezed,
    Object? isOnline = freezed,
    Object? isMessageSentOrRecieved = freezed,
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
      getMessageResponse: freezed == getMessageResponse
          ? _value.getMessageResponse
          : getMessageResponse // ignore: cast_nullable_to_non_nullable
              as GetMessageResponseModel?,
      isOnline: freezed == isOnline
          ? _value.isOnline
          : isOnline // ignore: cast_nullable_to_non_nullable
              as bool?,
      isMessageSentOrRecieved: freezed == isMessageSentOrRecieved
          ? _value.isMessageSentOrRecieved
          : isMessageSentOrRecieved // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_CurrentState implements _CurrentState {
  const _$_CurrentState(
      {required this.isPageLoading,
      this.errorMessage,
      this.getMessageResponse,
      this.isOnline,
      this.isMessageSentOrRecieved});

  @override
  final bool isPageLoading;
  @override
  final String? errorMessage;
  @override
  final GetMessageResponseModel? getMessageResponse;
  @override
  final bool? isOnline;
  @override
  final bool? isMessageSentOrRecieved;

  @override
  String toString() {
    return 'ChatScreenState.currentState(isPageLoading: $isPageLoading, errorMessage: $errorMessage, getMessageResponse: $getMessageResponse, isOnline: $isOnline, isMessageSentOrRecieved: $isMessageSentOrRecieved)';
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
            (identical(other.getMessageResponse, getMessageResponse) ||
                other.getMessageResponse == getMessageResponse) &&
            (identical(other.isOnline, isOnline) ||
                other.isOnline == isOnline) &&
            (identical(
                    other.isMessageSentOrRecieved, isMessageSentOrRecieved) ||
                other.isMessageSentOrRecieved == isMessageSentOrRecieved));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPageLoading, errorMessage,
      getMessageResponse, isOnline, isMessageSentOrRecieved);

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
            GetMessageResponseModel? getMessageResponse,
            bool? isOnline,
            bool? isMessageSentOrRecieved)
        currentState,
  }) {
    return currentState(isPageLoading, errorMessage, getMessageResponse,
        isOnline, isMessageSentOrRecieved);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isPageLoading,
            String? errorMessage,
            GetMessageResponseModel? getMessageResponse,
            bool? isOnline,
            bool? isMessageSentOrRecieved)?
        currentState,
  }) {
    return currentState?.call(isPageLoading, errorMessage, getMessageResponse,
        isOnline, isMessageSentOrRecieved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isPageLoading,
            String? errorMessage,
            GetMessageResponseModel? getMessageResponse,
            bool? isOnline,
            bool? isMessageSentOrRecieved)?
        currentState,
    required TResult orElse(),
  }) {
    if (currentState != null) {
      return currentState(isPageLoading, errorMessage, getMessageResponse,
          isOnline, isMessageSentOrRecieved);
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

abstract class _CurrentState implements ChatScreenState {
  const factory _CurrentState(
      {required final bool isPageLoading,
      final String? errorMessage,
      final GetMessageResponseModel? getMessageResponse,
      final bool? isOnline,
      final bool? isMessageSentOrRecieved}) = _$_CurrentState;

  @override
  bool get isPageLoading;
  @override
  String? get errorMessage;
  @override
  GetMessageResponseModel? get getMessageResponse;
  @override
  bool? get isOnline;
  @override
  bool? get isMessageSentOrRecieved;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentStateCopyWith<_$_CurrentState> get copyWith =>
      throw _privateConstructorUsedError;
}
