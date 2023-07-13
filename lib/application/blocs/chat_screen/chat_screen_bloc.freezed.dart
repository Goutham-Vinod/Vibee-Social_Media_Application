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
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId)? initializeScreen,
    TResult? Function(String? message)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId)? initializeScreen,
    TResult Function(String? message)? sendMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_InitializeScreen value) initializeScreen,
    required TResult Function(_SendMessage value) sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeScreen value)? initializeScreen,
    TResult? Function(_SendMessage value)? sendMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeScreen value)? initializeScreen,
    TResult Function(_SendMessage value)? sendMessage,
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
  }) {
    return initializeScreen(chatId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId)? initializeScreen,
    TResult? Function(String? message)? sendMessage,
  }) {
    return initializeScreen?.call(chatId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId)? initializeScreen,
    TResult Function(String? message)? sendMessage,
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
  }) {
    return initializeScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeScreen value)? initializeScreen,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return initializeScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeScreen value)? initializeScreen,
    TResult Function(_SendMessage value)? sendMessage,
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
  }) {
    return sendMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String chatId)? initializeScreen,
    TResult? Function(String? message)? sendMessage,
  }) {
    return sendMessage?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String chatId)? initializeScreen,
    TResult Function(String? message)? sendMessage,
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
  }) {
    return sendMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_InitializeScreen value)? initializeScreen,
    TResult? Function(_SendMessage value)? sendMessage,
  }) {
    return sendMessage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_InitializeScreen value)? initializeScreen,
    TResult Function(_SendMessage value)? sendMessage,
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
mixin _$ChatScreenState {
  bool get isPageLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  GetMessageResponseModel? get getMessageResponse =>
      throw _privateConstructorUsedError;
  bool? get isMessageSentOrRecieved => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isPageLoading,
            String? errorMessage,
            GetMessageResponseModel? getMessageResponse,
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
      this.isMessageSentOrRecieved});

  @override
  final bool isPageLoading;
  @override
  final String? errorMessage;
  @override
  final GetMessageResponseModel? getMessageResponse;
  @override
  final bool? isMessageSentOrRecieved;

  @override
  String toString() {
    return 'ChatScreenState.currentState(isPageLoading: $isPageLoading, errorMessage: $errorMessage, getMessageResponse: $getMessageResponse, isMessageSentOrRecieved: $isMessageSentOrRecieved)';
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
            (identical(
                    other.isMessageSentOrRecieved, isMessageSentOrRecieved) ||
                other.isMessageSentOrRecieved == isMessageSentOrRecieved));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isPageLoading, errorMessage,
      getMessageResponse, isMessageSentOrRecieved);

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
            bool? isMessageSentOrRecieved)
        currentState,
  }) {
    return currentState(isPageLoading, errorMessage, getMessageResponse,
        isMessageSentOrRecieved);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isPageLoading,
            String? errorMessage,
            GetMessageResponseModel? getMessageResponse,
            bool? isMessageSentOrRecieved)?
        currentState,
  }) {
    return currentState?.call(isPageLoading, errorMessage, getMessageResponse,
        isMessageSentOrRecieved);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isPageLoading,
            String? errorMessage,
            GetMessageResponseModel? getMessageResponse,
            bool? isMessageSentOrRecieved)?
        currentState,
    required TResult orElse(),
  }) {
    if (currentState != null) {
      return currentState(isPageLoading, errorMessage, getMessageResponse,
          isMessageSentOrRecieved);
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
      final bool? isMessageSentOrRecieved}) = _$_CurrentState;

  @override
  bool get isPageLoading;
  @override
  String? get errorMessage;
  @override
  GetMessageResponseModel? get getMessageResponse;
  @override
  bool? get isMessageSentOrRecieved;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentStateCopyWith<_$_CurrentState> get copyWith =>
      throw _privateConstructorUsedError;
}
