// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginUser,
    required TResult Function() clearEmailWarningText,
    required TResult Function() clearPasswordWarningText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginUser,
    TResult? Function()? clearEmailWarningText,
    TResult? Function()? clearPasswordWarningText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginUser,
    TResult Function()? clearEmailWarningText,
    TResult Function()? clearPasswordWarningText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginUser value) loginUser,
    required TResult Function(ClearEmailWarningText value)
        clearEmailWarningText,
    required TResult Function(ClearPasswordWarningText value)
        clearPasswordWarningText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginUser value)? loginUser,
    TResult? Function(ClearEmailWarningText value)? clearEmailWarningText,
    TResult? Function(ClearPasswordWarningText value)? clearPasswordWarningText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginUser value)? loginUser,
    TResult Function(ClearEmailWarningText value)? clearEmailWarningText,
    TResult Function(ClearPasswordWarningText value)? clearPasswordWarningText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginScreenEventCopyWith<$Res> {
  factory $LoginScreenEventCopyWith(
          LoginScreenEvent value, $Res Function(LoginScreenEvent) then) =
      _$LoginScreenEventCopyWithImpl<$Res, LoginScreenEvent>;
}

/// @nodoc
class _$LoginScreenEventCopyWithImpl<$Res, $Val extends LoginScreenEvent>
    implements $LoginScreenEventCopyWith<$Res> {
  _$LoginScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LoginUserCopyWith<$Res> {
  factory _$$LoginUserCopyWith(
          _$LoginUser value, $Res Function(_$LoginUser) then) =
      __$$LoginUserCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginUserCopyWithImpl<$Res>
    extends _$LoginScreenEventCopyWithImpl<$Res, _$LoginUser>
    implements _$$LoginUserCopyWith<$Res> {
  __$$LoginUserCopyWithImpl(
      _$LoginUser _value, $Res Function(_$LoginUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
  }) {
    return _then(_$LoginUser(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginUser implements LoginUser {
  const _$LoginUser({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginScreenEvent.loginUser(email: $email, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginUser &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginUserCopyWith<_$LoginUser> get copyWith =>
      __$$LoginUserCopyWithImpl<_$LoginUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginUser,
    required TResult Function() clearEmailWarningText,
    required TResult Function() clearPasswordWarningText,
  }) {
    return loginUser(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginUser,
    TResult? Function()? clearEmailWarningText,
    TResult? Function()? clearPasswordWarningText,
  }) {
    return loginUser?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginUser,
    TResult Function()? clearEmailWarningText,
    TResult Function()? clearPasswordWarningText,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginUser value) loginUser,
    required TResult Function(ClearEmailWarningText value)
        clearEmailWarningText,
    required TResult Function(ClearPasswordWarningText value)
        clearPasswordWarningText,
  }) {
    return loginUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginUser value)? loginUser,
    TResult? Function(ClearEmailWarningText value)? clearEmailWarningText,
    TResult? Function(ClearPasswordWarningText value)? clearPasswordWarningText,
  }) {
    return loginUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginUser value)? loginUser,
    TResult Function(ClearEmailWarningText value)? clearEmailWarningText,
    TResult Function(ClearPasswordWarningText value)? clearPasswordWarningText,
    required TResult orElse(),
  }) {
    if (loginUser != null) {
      return loginUser(this);
    }
    return orElse();
  }
}

abstract class LoginUser implements LoginScreenEvent {
  const factory LoginUser(
      {required final String email,
      required final String password}) = _$LoginUser;

  String get email;
  String get password;
  @JsonKey(ignore: true)
  _$$LoginUserCopyWith<_$LoginUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearEmailWarningTextCopyWith<$Res> {
  factory _$$ClearEmailWarningTextCopyWith(_$ClearEmailWarningText value,
          $Res Function(_$ClearEmailWarningText) then) =
      __$$ClearEmailWarningTextCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearEmailWarningTextCopyWithImpl<$Res>
    extends _$LoginScreenEventCopyWithImpl<$Res, _$ClearEmailWarningText>
    implements _$$ClearEmailWarningTextCopyWith<$Res> {
  __$$ClearEmailWarningTextCopyWithImpl(_$ClearEmailWarningText _value,
      $Res Function(_$ClearEmailWarningText) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearEmailWarningText implements ClearEmailWarningText {
  const _$ClearEmailWarningText();

  @override
  String toString() {
    return 'LoginScreenEvent.clearEmailWarningText()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ClearEmailWarningText);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginUser,
    required TResult Function() clearEmailWarningText,
    required TResult Function() clearPasswordWarningText,
  }) {
    return clearEmailWarningText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginUser,
    TResult? Function()? clearEmailWarningText,
    TResult? Function()? clearPasswordWarningText,
  }) {
    return clearEmailWarningText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginUser,
    TResult Function()? clearEmailWarningText,
    TResult Function()? clearPasswordWarningText,
    required TResult orElse(),
  }) {
    if (clearEmailWarningText != null) {
      return clearEmailWarningText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginUser value) loginUser,
    required TResult Function(ClearEmailWarningText value)
        clearEmailWarningText,
    required TResult Function(ClearPasswordWarningText value)
        clearPasswordWarningText,
  }) {
    return clearEmailWarningText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginUser value)? loginUser,
    TResult? Function(ClearEmailWarningText value)? clearEmailWarningText,
    TResult? Function(ClearPasswordWarningText value)? clearPasswordWarningText,
  }) {
    return clearEmailWarningText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginUser value)? loginUser,
    TResult Function(ClearEmailWarningText value)? clearEmailWarningText,
    TResult Function(ClearPasswordWarningText value)? clearPasswordWarningText,
    required TResult orElse(),
  }) {
    if (clearEmailWarningText != null) {
      return clearEmailWarningText(this);
    }
    return orElse();
  }
}

abstract class ClearEmailWarningText implements LoginScreenEvent {
  const factory ClearEmailWarningText() = _$ClearEmailWarningText;
}

/// @nodoc
abstract class _$$ClearPasswordWarningTextCopyWith<$Res> {
  factory _$$ClearPasswordWarningTextCopyWith(_$ClearPasswordWarningText value,
          $Res Function(_$ClearPasswordWarningText) then) =
      __$$ClearPasswordWarningTextCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPasswordWarningTextCopyWithImpl<$Res>
    extends _$LoginScreenEventCopyWithImpl<$Res, _$ClearPasswordWarningText>
    implements _$$ClearPasswordWarningTextCopyWith<$Res> {
  __$$ClearPasswordWarningTextCopyWithImpl(_$ClearPasswordWarningText _value,
      $Res Function(_$ClearPasswordWarningText) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearPasswordWarningText implements ClearPasswordWarningText {
  const _$ClearPasswordWarningText();

  @override
  String toString() {
    return 'LoginScreenEvent.clearPasswordWarningText()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearPasswordWarningText);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginUser,
    required TResult Function() clearEmailWarningText,
    required TResult Function() clearPasswordWarningText,
  }) {
    return clearPasswordWarningText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginUser,
    TResult? Function()? clearEmailWarningText,
    TResult? Function()? clearPasswordWarningText,
  }) {
    return clearPasswordWarningText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginUser,
    TResult Function()? clearEmailWarningText,
    TResult Function()? clearPasswordWarningText,
    required TResult orElse(),
  }) {
    if (clearPasswordWarningText != null) {
      return clearPasswordWarningText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LoginUser value) loginUser,
    required TResult Function(ClearEmailWarningText value)
        clearEmailWarningText,
    required TResult Function(ClearPasswordWarningText value)
        clearPasswordWarningText,
  }) {
    return clearPasswordWarningText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LoginUser value)? loginUser,
    TResult? Function(ClearEmailWarningText value)? clearEmailWarningText,
    TResult? Function(ClearPasswordWarningText value)? clearPasswordWarningText,
  }) {
    return clearPasswordWarningText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LoginUser value)? loginUser,
    TResult Function(ClearEmailWarningText value)? clearEmailWarningText,
    TResult Function(ClearPasswordWarningText value)? clearPasswordWarningText,
    required TResult orElse(),
  }) {
    if (clearPasswordWarningText != null) {
      return clearPasswordWarningText(this);
    }
    return orElse();
  }
}

abstract class ClearPasswordWarningText implements LoginScreenEvent {
  const factory ClearPasswordWarningText() = _$ClearPasswordWarningText;
}

/// @nodoc
mixin _$LoginScreenState {
  Option<Either<ApiFailure, bool>> get isValidated =>
      throw _privateConstructorUsedError;
  String get emailWarningText => throw _privateConstructorUsedError;
  String get passwordWarningText => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Either<ApiFailure, bool>> isValidated,
            String emailWarningText, String passwordWarningText)
        currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Either<ApiFailure, bool>> isValidated,
            String emailWarningText, String passwordWarningText)?
        currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Either<ApiFailure, bool>> isValidated,
            String emailWarningText, String passwordWarningText)?
        currentState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? currentState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginScreenStateCopyWith<LoginScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginScreenStateCopyWith<$Res> {
  factory $LoginScreenStateCopyWith(
          LoginScreenState value, $Res Function(LoginScreenState) then) =
      _$LoginScreenStateCopyWithImpl<$Res, LoginScreenState>;
  @useResult
  $Res call(
      {Option<Either<ApiFailure, bool>> isValidated,
      String emailWarningText,
      String passwordWarningText});
}

/// @nodoc
class _$LoginScreenStateCopyWithImpl<$Res, $Val extends LoginScreenState>
    implements $LoginScreenStateCopyWith<$Res> {
  _$LoginScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValidated = null,
    Object? emailWarningText = null,
    Object? passwordWarningText = null,
  }) {
    return _then(_value.copyWith(
      isValidated: null == isValidated
          ? _value.isValidated
          : isValidated // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, bool>>,
      emailWarningText: null == emailWarningText
          ? _value.emailWarningText
          : emailWarningText // ignore: cast_nullable_to_non_nullable
              as String,
      passwordWarningText: null == passwordWarningText
          ? _value.passwordWarningText
          : passwordWarningText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $LoginScreenStateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<ApiFailure, bool>> isValidated,
      String emailWarningText,
      String passwordWarningText});
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$LoginScreenStateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValidated = null,
    Object? emailWarningText = null,
    Object? passwordWarningText = null,
  }) {
    return _then(_$Initial(
      isValidated: null == isValidated
          ? _value.isValidated
          : isValidated // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, bool>>,
      emailWarningText: null == emailWarningText
          ? _value.emailWarningText
          : emailWarningText // ignore: cast_nullable_to_non_nullable
              as String,
      passwordWarningText: null == passwordWarningText
          ? _value.passwordWarningText
          : passwordWarningText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial(
      {required this.isValidated,
      required this.emailWarningText,
      required this.passwordWarningText});

  @override
  final Option<Either<ApiFailure, bool>> isValidated;
  @override
  final String emailWarningText;
  @override
  final String passwordWarningText;

  @override
  String toString() {
    return 'LoginScreenState.currentState(isValidated: $isValidated, emailWarningText: $emailWarningText, passwordWarningText: $passwordWarningText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            (identical(other.isValidated, isValidated) ||
                other.isValidated == isValidated) &&
            (identical(other.emailWarningText, emailWarningText) ||
                other.emailWarningText == emailWarningText) &&
            (identical(other.passwordWarningText, passwordWarningText) ||
                other.passwordWarningText == passwordWarningText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, isValidated, emailWarningText, passwordWarningText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Option<Either<ApiFailure, bool>> isValidated,
            String emailWarningText, String passwordWarningText)
        currentState,
  }) {
    return currentState(isValidated, emailWarningText, passwordWarningText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Option<Either<ApiFailure, bool>> isValidated,
            String emailWarningText, String passwordWarningText)?
        currentState,
  }) {
    return currentState?.call(
        isValidated, emailWarningText, passwordWarningText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Option<Either<ApiFailure, bool>> isValidated,
            String emailWarningText, String passwordWarningText)?
        currentState,
    required TResult orElse(),
  }) {
    if (currentState != null) {
      return currentState(isValidated, emailWarningText, passwordWarningText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) currentState,
  }) {
    return currentState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial value)? currentState,
  }) {
    return currentState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? currentState,
    required TResult orElse(),
  }) {
    if (currentState != null) {
      return currentState(this);
    }
    return orElse();
  }
}

abstract class Initial implements LoginScreenState {
  const factory Initial(
      {required final Option<Either<ApiFailure, bool>> isValidated,
      required final String emailWarningText,
      required final String passwordWarningText}) = _$Initial;

  @override
  Option<Either<ApiFailure, bool>> get isValidated;
  @override
  String get emailWarningText;
  @override
  String get passwordWarningText;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
