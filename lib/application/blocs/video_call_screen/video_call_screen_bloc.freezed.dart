// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'video_call_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$VideoCallScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId) startVideoCall,
    required TResult Function(String channelName) initAgora,
    required TResult Function() mute,
    required TResult Function() localUserJoined,
    required TResult Function(int remoteUid) addRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId)? startVideoCall,
    TResult? Function(String channelName)? initAgora,
    TResult? Function()? mute,
    TResult? Function()? localUserJoined,
    TResult? Function(int remoteUid)? addRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId)? startVideoCall,
    TResult Function(String channelName)? initAgora,
    TResult Function()? mute,
    TResult Function()? localUserJoined,
    TResult Function(int remoteUid)? addRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_InitAgora value) initAgora,
    required TResult Function(_Mute value) mute,
    required TResult Function(_LocalUserJoined value) localUserJoined,
    required TResult Function(_AddRemoteUid value) addRemoteUid,
    required TResult Function(_RemoveRemoteUid value) removeRemoteUid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartVideoCall value)? startVideoCall,
    TResult? Function(_InitAgora value)? initAgora,
    TResult? Function(_Mute value)? mute,
    TResult? Function(_LocalUserJoined value)? localUserJoined,
    TResult? Function(_AddRemoteUid value)? addRemoteUid,
    TResult? Function(_RemoveRemoteUid value)? removeRemoteUid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_InitAgora value)? initAgora,
    TResult Function(_Mute value)? mute,
    TResult Function(_LocalUserJoined value)? localUserJoined,
    TResult Function(_AddRemoteUid value)? addRemoteUid,
    TResult Function(_RemoveRemoteUid value)? removeRemoteUid,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCallScreenEventCopyWith<$Res> {
  factory $VideoCallScreenEventCopyWith(VideoCallScreenEvent value,
          $Res Function(VideoCallScreenEvent) then) =
      _$VideoCallScreenEventCopyWithImpl<$Res, VideoCallScreenEvent>;
}

/// @nodoc
class _$VideoCallScreenEventCopyWithImpl<$Res,
        $Val extends VideoCallScreenEvent>
    implements $VideoCallScreenEventCopyWith<$Res> {
  _$VideoCallScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartVideoCallCopyWith<$Res> {
  factory _$$_StartVideoCallCopyWith(
          _$_StartVideoCall value, $Res Function(_$_StartVideoCall) then) =
      __$$_StartVideoCallCopyWithImpl<$Res>;
  @useResult
  $Res call({String conversationId});
}

/// @nodoc
class __$$_StartVideoCallCopyWithImpl<$Res>
    extends _$VideoCallScreenEventCopyWithImpl<$Res, _$_StartVideoCall>
    implements _$$_StartVideoCallCopyWith<$Res> {
  __$$_StartVideoCallCopyWithImpl(
      _$_StartVideoCall _value, $Res Function(_$_StartVideoCall) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? conversationId = null,
  }) {
    return _then(_$_StartVideoCall(
      conversationId: null == conversationId
          ? _value.conversationId
          : conversationId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_StartVideoCall implements _StartVideoCall {
  const _$_StartVideoCall({required this.conversationId});

  @override
  final String conversationId;

  @override
  String toString() {
    return 'VideoCallScreenEvent.startVideoCall(conversationId: $conversationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartVideoCall &&
            (identical(other.conversationId, conversationId) ||
                other.conversationId == conversationId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, conversationId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartVideoCallCopyWith<_$_StartVideoCall> get copyWith =>
      __$$_StartVideoCallCopyWithImpl<_$_StartVideoCall>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId) startVideoCall,
    required TResult Function(String channelName) initAgora,
    required TResult Function() mute,
    required TResult Function() localUserJoined,
    required TResult Function(int remoteUid) addRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUid,
  }) {
    return startVideoCall(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId)? startVideoCall,
    TResult? Function(String channelName)? initAgora,
    TResult? Function()? mute,
    TResult? Function()? localUserJoined,
    TResult? Function(int remoteUid)? addRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUid,
  }) {
    return startVideoCall?.call(conversationId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId)? startVideoCall,
    TResult Function(String channelName)? initAgora,
    TResult Function()? mute,
    TResult Function()? localUserJoined,
    TResult Function(int remoteUid)? addRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUid,
    required TResult orElse(),
  }) {
    if (startVideoCall != null) {
      return startVideoCall(conversationId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_InitAgora value) initAgora,
    required TResult Function(_Mute value) mute,
    required TResult Function(_LocalUserJoined value) localUserJoined,
    required TResult Function(_AddRemoteUid value) addRemoteUid,
    required TResult Function(_RemoveRemoteUid value) removeRemoteUid,
  }) {
    return startVideoCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartVideoCall value)? startVideoCall,
    TResult? Function(_InitAgora value)? initAgora,
    TResult? Function(_Mute value)? mute,
    TResult? Function(_LocalUserJoined value)? localUserJoined,
    TResult? Function(_AddRemoteUid value)? addRemoteUid,
    TResult? Function(_RemoveRemoteUid value)? removeRemoteUid,
  }) {
    return startVideoCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_InitAgora value)? initAgora,
    TResult Function(_Mute value)? mute,
    TResult Function(_LocalUserJoined value)? localUserJoined,
    TResult Function(_AddRemoteUid value)? addRemoteUid,
    TResult Function(_RemoveRemoteUid value)? removeRemoteUid,
    required TResult orElse(),
  }) {
    if (startVideoCall != null) {
      return startVideoCall(this);
    }
    return orElse();
  }
}

abstract class _StartVideoCall implements VideoCallScreenEvent {
  const factory _StartVideoCall({required final String conversationId}) =
      _$_StartVideoCall;

  String get conversationId;
  @JsonKey(ignore: true)
  _$$_StartVideoCallCopyWith<_$_StartVideoCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitAgoraCopyWith<$Res> {
  factory _$$_InitAgoraCopyWith(
          _$_InitAgora value, $Res Function(_$_InitAgora) then) =
      __$$_InitAgoraCopyWithImpl<$Res>;
  @useResult
  $Res call({String channelName});
}

/// @nodoc
class __$$_InitAgoraCopyWithImpl<$Res>
    extends _$VideoCallScreenEventCopyWithImpl<$Res, _$_InitAgora>
    implements _$$_InitAgoraCopyWith<$Res> {
  __$$_InitAgoraCopyWithImpl(
      _$_InitAgora _value, $Res Function(_$_InitAgora) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? channelName = null,
  }) {
    return _then(_$_InitAgora(
      channelName: null == channelName
          ? _value.channelName
          : channelName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_InitAgora implements _InitAgora {
  const _$_InitAgora({required this.channelName});

  @override
  final String channelName;

  @override
  String toString() {
    return 'VideoCallScreenEvent.initAgora(channelName: $channelName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitAgora &&
            (identical(other.channelName, channelName) ||
                other.channelName == channelName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, channelName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitAgoraCopyWith<_$_InitAgora> get copyWith =>
      __$$_InitAgoraCopyWithImpl<_$_InitAgora>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId) startVideoCall,
    required TResult Function(String channelName) initAgora,
    required TResult Function() mute,
    required TResult Function() localUserJoined,
    required TResult Function(int remoteUid) addRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUid,
  }) {
    return initAgora(channelName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId)? startVideoCall,
    TResult? Function(String channelName)? initAgora,
    TResult? Function()? mute,
    TResult? Function()? localUserJoined,
    TResult? Function(int remoteUid)? addRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUid,
  }) {
    return initAgora?.call(channelName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId)? startVideoCall,
    TResult Function(String channelName)? initAgora,
    TResult Function()? mute,
    TResult Function()? localUserJoined,
    TResult Function(int remoteUid)? addRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUid,
    required TResult orElse(),
  }) {
    if (initAgora != null) {
      return initAgora(channelName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_InitAgora value) initAgora,
    required TResult Function(_Mute value) mute,
    required TResult Function(_LocalUserJoined value) localUserJoined,
    required TResult Function(_AddRemoteUid value) addRemoteUid,
    required TResult Function(_RemoveRemoteUid value) removeRemoteUid,
  }) {
    return initAgora(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartVideoCall value)? startVideoCall,
    TResult? Function(_InitAgora value)? initAgora,
    TResult? Function(_Mute value)? mute,
    TResult? Function(_LocalUserJoined value)? localUserJoined,
    TResult? Function(_AddRemoteUid value)? addRemoteUid,
    TResult? Function(_RemoveRemoteUid value)? removeRemoteUid,
  }) {
    return initAgora?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_InitAgora value)? initAgora,
    TResult Function(_Mute value)? mute,
    TResult Function(_LocalUserJoined value)? localUserJoined,
    TResult Function(_AddRemoteUid value)? addRemoteUid,
    TResult Function(_RemoveRemoteUid value)? removeRemoteUid,
    required TResult orElse(),
  }) {
    if (initAgora != null) {
      return initAgora(this);
    }
    return orElse();
  }
}

abstract class _InitAgora implements VideoCallScreenEvent {
  const factory _InitAgora({required final String channelName}) = _$_InitAgora;

  String get channelName;
  @JsonKey(ignore: true)
  _$$_InitAgoraCopyWith<_$_InitAgora> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_MuteCopyWith<$Res> {
  factory _$$_MuteCopyWith(_$_Mute value, $Res Function(_$_Mute) then) =
      __$$_MuteCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MuteCopyWithImpl<$Res>
    extends _$VideoCallScreenEventCopyWithImpl<$Res, _$_Mute>
    implements _$$_MuteCopyWith<$Res> {
  __$$_MuteCopyWithImpl(_$_Mute _value, $Res Function(_$_Mute) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Mute implements _Mute {
  const _$_Mute();

  @override
  String toString() {
    return 'VideoCallScreenEvent.mute()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Mute);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId) startVideoCall,
    required TResult Function(String channelName) initAgora,
    required TResult Function() mute,
    required TResult Function() localUserJoined,
    required TResult Function(int remoteUid) addRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUid,
  }) {
    return mute();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId)? startVideoCall,
    TResult? Function(String channelName)? initAgora,
    TResult? Function()? mute,
    TResult? Function()? localUserJoined,
    TResult? Function(int remoteUid)? addRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUid,
  }) {
    return mute?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId)? startVideoCall,
    TResult Function(String channelName)? initAgora,
    TResult Function()? mute,
    TResult Function()? localUserJoined,
    TResult Function(int remoteUid)? addRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUid,
    required TResult orElse(),
  }) {
    if (mute != null) {
      return mute();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_InitAgora value) initAgora,
    required TResult Function(_Mute value) mute,
    required TResult Function(_LocalUserJoined value) localUserJoined,
    required TResult Function(_AddRemoteUid value) addRemoteUid,
    required TResult Function(_RemoveRemoteUid value) removeRemoteUid,
  }) {
    return mute(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartVideoCall value)? startVideoCall,
    TResult? Function(_InitAgora value)? initAgora,
    TResult? Function(_Mute value)? mute,
    TResult? Function(_LocalUserJoined value)? localUserJoined,
    TResult? Function(_AddRemoteUid value)? addRemoteUid,
    TResult? Function(_RemoveRemoteUid value)? removeRemoteUid,
  }) {
    return mute?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_InitAgora value)? initAgora,
    TResult Function(_Mute value)? mute,
    TResult Function(_LocalUserJoined value)? localUserJoined,
    TResult Function(_AddRemoteUid value)? addRemoteUid,
    TResult Function(_RemoveRemoteUid value)? removeRemoteUid,
    required TResult orElse(),
  }) {
    if (mute != null) {
      return mute(this);
    }
    return orElse();
  }
}

abstract class _Mute implements VideoCallScreenEvent {
  const factory _Mute() = _$_Mute;
}

/// @nodoc
abstract class _$$_LocalUserJoinedCopyWith<$Res> {
  factory _$$_LocalUserJoinedCopyWith(
          _$_LocalUserJoined value, $Res Function(_$_LocalUserJoined) then) =
      __$$_LocalUserJoinedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LocalUserJoinedCopyWithImpl<$Res>
    extends _$VideoCallScreenEventCopyWithImpl<$Res, _$_LocalUserJoined>
    implements _$$_LocalUserJoinedCopyWith<$Res> {
  __$$_LocalUserJoinedCopyWithImpl(
      _$_LocalUserJoined _value, $Res Function(_$_LocalUserJoined) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_LocalUserJoined implements _LocalUserJoined {
  const _$_LocalUserJoined();

  @override
  String toString() {
    return 'VideoCallScreenEvent.localUserJoined()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LocalUserJoined);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId) startVideoCall,
    required TResult Function(String channelName) initAgora,
    required TResult Function() mute,
    required TResult Function() localUserJoined,
    required TResult Function(int remoteUid) addRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUid,
  }) {
    return localUserJoined();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId)? startVideoCall,
    TResult? Function(String channelName)? initAgora,
    TResult? Function()? mute,
    TResult? Function()? localUserJoined,
    TResult? Function(int remoteUid)? addRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUid,
  }) {
    return localUserJoined?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId)? startVideoCall,
    TResult Function(String channelName)? initAgora,
    TResult Function()? mute,
    TResult Function()? localUserJoined,
    TResult Function(int remoteUid)? addRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUid,
    required TResult orElse(),
  }) {
    if (localUserJoined != null) {
      return localUserJoined();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_InitAgora value) initAgora,
    required TResult Function(_Mute value) mute,
    required TResult Function(_LocalUserJoined value) localUserJoined,
    required TResult Function(_AddRemoteUid value) addRemoteUid,
    required TResult Function(_RemoveRemoteUid value) removeRemoteUid,
  }) {
    return localUserJoined(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartVideoCall value)? startVideoCall,
    TResult? Function(_InitAgora value)? initAgora,
    TResult? Function(_Mute value)? mute,
    TResult? Function(_LocalUserJoined value)? localUserJoined,
    TResult? Function(_AddRemoteUid value)? addRemoteUid,
    TResult? Function(_RemoveRemoteUid value)? removeRemoteUid,
  }) {
    return localUserJoined?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_InitAgora value)? initAgora,
    TResult Function(_Mute value)? mute,
    TResult Function(_LocalUserJoined value)? localUserJoined,
    TResult Function(_AddRemoteUid value)? addRemoteUid,
    TResult Function(_RemoveRemoteUid value)? removeRemoteUid,
    required TResult orElse(),
  }) {
    if (localUserJoined != null) {
      return localUserJoined(this);
    }
    return orElse();
  }
}

abstract class _LocalUserJoined implements VideoCallScreenEvent {
  const factory _LocalUserJoined() = _$_LocalUserJoined;
}

/// @nodoc
abstract class _$$_AddRemoteUidCopyWith<$Res> {
  factory _$$_AddRemoteUidCopyWith(
          _$_AddRemoteUid value, $Res Function(_$_AddRemoteUid) then) =
      __$$_AddRemoteUidCopyWithImpl<$Res>;
  @useResult
  $Res call({int remoteUid});
}

/// @nodoc
class __$$_AddRemoteUidCopyWithImpl<$Res>
    extends _$VideoCallScreenEventCopyWithImpl<$Res, _$_AddRemoteUid>
    implements _$$_AddRemoteUidCopyWith<$Res> {
  __$$_AddRemoteUidCopyWithImpl(
      _$_AddRemoteUid _value, $Res Function(_$_AddRemoteUid) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteUid = null,
  }) {
    return _then(_$_AddRemoteUid(
      remoteUid: null == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_AddRemoteUid implements _AddRemoteUid {
  const _$_AddRemoteUid({required this.remoteUid});

  @override
  final int remoteUid;

  @override
  String toString() {
    return 'VideoCallScreenEvent.addRemoteUid(remoteUid: $remoteUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddRemoteUid &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remoteUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddRemoteUidCopyWith<_$_AddRemoteUid> get copyWith =>
      __$$_AddRemoteUidCopyWithImpl<_$_AddRemoteUid>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId) startVideoCall,
    required TResult Function(String channelName) initAgora,
    required TResult Function() mute,
    required TResult Function() localUserJoined,
    required TResult Function(int remoteUid) addRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUid,
  }) {
    return addRemoteUid(remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId)? startVideoCall,
    TResult? Function(String channelName)? initAgora,
    TResult? Function()? mute,
    TResult? Function()? localUserJoined,
    TResult? Function(int remoteUid)? addRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUid,
  }) {
    return addRemoteUid?.call(remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId)? startVideoCall,
    TResult Function(String channelName)? initAgora,
    TResult Function()? mute,
    TResult Function()? localUserJoined,
    TResult Function(int remoteUid)? addRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUid,
    required TResult orElse(),
  }) {
    if (addRemoteUid != null) {
      return addRemoteUid(remoteUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_InitAgora value) initAgora,
    required TResult Function(_Mute value) mute,
    required TResult Function(_LocalUserJoined value) localUserJoined,
    required TResult Function(_AddRemoteUid value) addRemoteUid,
    required TResult Function(_RemoveRemoteUid value) removeRemoteUid,
  }) {
    return addRemoteUid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartVideoCall value)? startVideoCall,
    TResult? Function(_InitAgora value)? initAgora,
    TResult? Function(_Mute value)? mute,
    TResult? Function(_LocalUserJoined value)? localUserJoined,
    TResult? Function(_AddRemoteUid value)? addRemoteUid,
    TResult? Function(_RemoveRemoteUid value)? removeRemoteUid,
  }) {
    return addRemoteUid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_InitAgora value)? initAgora,
    TResult Function(_Mute value)? mute,
    TResult Function(_LocalUserJoined value)? localUserJoined,
    TResult Function(_AddRemoteUid value)? addRemoteUid,
    TResult Function(_RemoveRemoteUid value)? removeRemoteUid,
    required TResult orElse(),
  }) {
    if (addRemoteUid != null) {
      return addRemoteUid(this);
    }
    return orElse();
  }
}

abstract class _AddRemoteUid implements VideoCallScreenEvent {
  const factory _AddRemoteUid({required final int remoteUid}) = _$_AddRemoteUid;

  int get remoteUid;
  @JsonKey(ignore: true)
  _$$_AddRemoteUidCopyWith<_$_AddRemoteUid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveRemoteUidCopyWith<$Res> {
  factory _$$_RemoveRemoteUidCopyWith(
          _$_RemoveRemoteUid value, $Res Function(_$_RemoveRemoteUid) then) =
      __$$_RemoveRemoteUidCopyWithImpl<$Res>;
  @useResult
  $Res call({int remoteUid});
}

/// @nodoc
class __$$_RemoveRemoteUidCopyWithImpl<$Res>
    extends _$VideoCallScreenEventCopyWithImpl<$Res, _$_RemoveRemoteUid>
    implements _$$_RemoveRemoteUidCopyWith<$Res> {
  __$$_RemoveRemoteUidCopyWithImpl(
      _$_RemoveRemoteUid _value, $Res Function(_$_RemoveRemoteUid) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? remoteUid = null,
  }) {
    return _then(_$_RemoveRemoteUid(
      remoteUid: null == remoteUid
          ? _value.remoteUid
          : remoteUid // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RemoveRemoteUid implements _RemoveRemoteUid {
  const _$_RemoveRemoteUid({required this.remoteUid});

  @override
  final int remoteUid;

  @override
  String toString() {
    return 'VideoCallScreenEvent.removeRemoteUid(remoteUid: $remoteUid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveRemoteUid &&
            (identical(other.remoteUid, remoteUid) ||
                other.remoteUid == remoteUid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, remoteUid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveRemoteUidCopyWith<_$_RemoveRemoteUid> get copyWith =>
      __$$_RemoveRemoteUidCopyWithImpl<_$_RemoveRemoteUid>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String conversationId) startVideoCall,
    required TResult Function(String channelName) initAgora,
    required TResult Function() mute,
    required TResult Function() localUserJoined,
    required TResult Function(int remoteUid) addRemoteUid,
    required TResult Function(int remoteUid) removeRemoteUid,
  }) {
    return removeRemoteUid(remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String conversationId)? startVideoCall,
    TResult? Function(String channelName)? initAgora,
    TResult? Function()? mute,
    TResult? Function()? localUserJoined,
    TResult? Function(int remoteUid)? addRemoteUid,
    TResult? Function(int remoteUid)? removeRemoteUid,
  }) {
    return removeRemoteUid?.call(remoteUid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String conversationId)? startVideoCall,
    TResult Function(String channelName)? initAgora,
    TResult Function()? mute,
    TResult Function()? localUserJoined,
    TResult Function(int remoteUid)? addRemoteUid,
    TResult Function(int remoteUid)? removeRemoteUid,
    required TResult orElse(),
  }) {
    if (removeRemoteUid != null) {
      return removeRemoteUid(remoteUid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartVideoCall value) startVideoCall,
    required TResult Function(_InitAgora value) initAgora,
    required TResult Function(_Mute value) mute,
    required TResult Function(_LocalUserJoined value) localUserJoined,
    required TResult Function(_AddRemoteUid value) addRemoteUid,
    required TResult Function(_RemoveRemoteUid value) removeRemoteUid,
  }) {
    return removeRemoteUid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartVideoCall value)? startVideoCall,
    TResult? Function(_InitAgora value)? initAgora,
    TResult? Function(_Mute value)? mute,
    TResult? Function(_LocalUserJoined value)? localUserJoined,
    TResult? Function(_AddRemoteUid value)? addRemoteUid,
    TResult? Function(_RemoveRemoteUid value)? removeRemoteUid,
  }) {
    return removeRemoteUid?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartVideoCall value)? startVideoCall,
    TResult Function(_InitAgora value)? initAgora,
    TResult Function(_Mute value)? mute,
    TResult Function(_LocalUserJoined value)? localUserJoined,
    TResult Function(_AddRemoteUid value)? addRemoteUid,
    TResult Function(_RemoveRemoteUid value)? removeRemoteUid,
    required TResult orElse(),
  }) {
    if (removeRemoteUid != null) {
      return removeRemoteUid(this);
    }
    return orElse();
  }
}

abstract class _RemoveRemoteUid implements VideoCallScreenEvent {
  const factory _RemoveRemoteUid({required final int remoteUid}) =
      _$_RemoveRemoteUid;

  int get remoteUid;
  @JsonKey(ignore: true)
  _$$_RemoveRemoteUidCopyWith<_$_RemoveRemoteUid> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$VideoCallScreenState {
  bool? get isCallEnded => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get videoCallToken => throw _privateConstructorUsedError;
  bool get localUserJoined => throw _privateConstructorUsedError;
  bool get initializationDone => throw _privateConstructorUsedError;
  String? get chatId => throw _privateConstructorUsedError;
  bool get muted => throw _privateConstructorUsedError;
  List<int> get users => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool? isCallEnded,
            String? errorMessage,
            String? videoCallToken,
            bool localUserJoined,
            bool initializationDone,
            String? chatId,
            bool muted,
            List<int> users)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool? isCallEnded,
            String? errorMessage,
            String? videoCallToken,
            bool localUserJoined,
            bool initializationDone,
            String? chatId,
            bool muted,
            List<int> users)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool? isCallEnded,
            String? errorMessage,
            String? videoCallToken,
            bool localUserJoined,
            bool initializationDone,
            String? chatId,
            bool muted,
            List<int> users)?
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
  $VideoCallScreenStateCopyWith<VideoCallScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VideoCallScreenStateCopyWith<$Res> {
  factory $VideoCallScreenStateCopyWith(VideoCallScreenState value,
          $Res Function(VideoCallScreenState) then) =
      _$VideoCallScreenStateCopyWithImpl<$Res, VideoCallScreenState>;
  @useResult
  $Res call(
      {bool? isCallEnded,
      String? errorMessage,
      String? videoCallToken,
      bool localUserJoined,
      bool initializationDone,
      String? chatId,
      bool muted,
      List<int> users});
}

/// @nodoc
class _$VideoCallScreenStateCopyWithImpl<$Res,
        $Val extends VideoCallScreenState>
    implements $VideoCallScreenStateCopyWith<$Res> {
  _$VideoCallScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCallEnded = freezed,
    Object? errorMessage = freezed,
    Object? videoCallToken = freezed,
    Object? localUserJoined = null,
    Object? initializationDone = null,
    Object? chatId = freezed,
    Object? muted = null,
    Object? users = null,
  }) {
    return _then(_value.copyWith(
      isCallEnded: freezed == isCallEnded
          ? _value.isCallEnded
          : isCallEnded // ignore: cast_nullable_to_non_nullable
              as bool?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      videoCallToken: freezed == videoCallToken
          ? _value.videoCallToken
          : videoCallToken // ignore: cast_nullable_to_non_nullable
              as String?,
      localUserJoined: null == localUserJoined
          ? _value.localUserJoined
          : localUserJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      initializationDone: null == initializationDone
          ? _value.initializationDone
          : initializationDone // ignore: cast_nullable_to_non_nullable
              as bool,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      muted: null == muted
          ? _value.muted
          : muted // ignore: cast_nullable_to_non_nullable
              as bool,
      users: null == users
          ? _value.users
          : users // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $VideoCallScreenStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? isCallEnded,
      String? errorMessage,
      String? videoCallToken,
      bool localUserJoined,
      bool initializationDone,
      String? chatId,
      bool muted,
      List<int> users});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$VideoCallScreenStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isCallEnded = freezed,
    Object? errorMessage = freezed,
    Object? videoCallToken = freezed,
    Object? localUserJoined = null,
    Object? initializationDone = null,
    Object? chatId = freezed,
    Object? muted = null,
    Object? users = null,
  }) {
    return _then(_$_Initial(
      isCallEnded: freezed == isCallEnded
          ? _value.isCallEnded
          : isCallEnded // ignore: cast_nullable_to_non_nullable
              as bool?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      videoCallToken: freezed == videoCallToken
          ? _value.videoCallToken
          : videoCallToken // ignore: cast_nullable_to_non_nullable
              as String?,
      localUserJoined: null == localUserJoined
          ? _value.localUserJoined
          : localUserJoined // ignore: cast_nullable_to_non_nullable
              as bool,
      initializationDone: null == initializationDone
          ? _value.initializationDone
          : initializationDone // ignore: cast_nullable_to_non_nullable
              as bool,
      chatId: freezed == chatId
          ? _value.chatId
          : chatId // ignore: cast_nullable_to_non_nullable
              as String?,
      muted: null == muted
          ? _value.muted
          : muted // ignore: cast_nullable_to_non_nullable
              as bool,
      users: null == users
          ? _value._users
          : users // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.isCallEnded,
      this.errorMessage,
      this.videoCallToken,
      required this.localUserJoined,
      required this.initializationDone,
      this.chatId,
      required this.muted,
      required final List<int> users})
      : _users = users;

  @override
  final bool? isCallEnded;
  @override
  final String? errorMessage;
  @override
  final String? videoCallToken;
  @override
  final bool localUserJoined;
  @override
  final bool initializationDone;
  @override
  final String? chatId;
  @override
  final bool muted;
  final List<int> _users;
  @override
  List<int> get users {
    if (_users is EqualUnmodifiableListView) return _users;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_users);
  }

  @override
  String toString() {
    return 'VideoCallScreenState.initial(isCallEnded: $isCallEnded, errorMessage: $errorMessage, videoCallToken: $videoCallToken, localUserJoined: $localUserJoined, initializationDone: $initializationDone, chatId: $chatId, muted: $muted, users: $users)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.isCallEnded, isCallEnded) ||
                other.isCallEnded == isCallEnded) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.videoCallToken, videoCallToken) ||
                other.videoCallToken == videoCallToken) &&
            (identical(other.localUserJoined, localUserJoined) ||
                other.localUserJoined == localUserJoined) &&
            (identical(other.initializationDone, initializationDone) ||
                other.initializationDone == initializationDone) &&
            (identical(other.chatId, chatId) || other.chatId == chatId) &&
            (identical(other.muted, muted) || other.muted == muted) &&
            const DeepCollectionEquality().equals(other._users, _users));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isCallEnded,
      errorMessage,
      videoCallToken,
      localUserJoined,
      initializationDone,
      chatId,
      muted,
      const DeepCollectionEquality().hash(_users));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool? isCallEnded,
            String? errorMessage,
            String? videoCallToken,
            bool localUserJoined,
            bool initializationDone,
            String? chatId,
            bool muted,
            List<int> users)
        initial,
  }) {
    return initial(isCallEnded, errorMessage, videoCallToken, localUserJoined,
        initializationDone, chatId, muted, users);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool? isCallEnded,
            String? errorMessage,
            String? videoCallToken,
            bool localUserJoined,
            bool initializationDone,
            String? chatId,
            bool muted,
            List<int> users)?
        initial,
  }) {
    return initial?.call(isCallEnded, errorMessage, videoCallToken,
        localUserJoined, initializationDone, chatId, muted, users);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool? isCallEnded,
            String? errorMessage,
            String? videoCallToken,
            bool localUserJoined,
            bool initializationDone,
            String? chatId,
            bool muted,
            List<int> users)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(isCallEnded, errorMessage, videoCallToken, localUserJoined,
          initializationDone, chatId, muted, users);
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

abstract class _Initial implements VideoCallScreenState {
  const factory _Initial(
      {final bool? isCallEnded,
      final String? errorMessage,
      final String? videoCallToken,
      required final bool localUserJoined,
      required final bool initializationDone,
      final String? chatId,
      required final bool muted,
      required final List<int> users}) = _$_Initial;

  @override
  bool? get isCallEnded;
  @override
  String? get errorMessage;
  @override
  String? get videoCallToken;
  @override
  bool get localUserJoined;
  @override
  bool get initializationDone;
  @override
  String? get chatId;
  @override
  bool get muted;
  @override
  List<int> get users;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
