// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_screen_1_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterScreen_1_Event {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firstName, String lastName, String username, String email)
        registerUser,
    required TResult Function() clearFirstNameWarningText,
    required TResult Function() clearLastNameWarningText,
    required TResult Function() clearUserNameWarningText,
    required TResult Function() clearEmailWarningText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String firstName, String lastName, String username, String email)?
        registerUser,
    TResult? Function()? clearFirstNameWarningText,
    TResult? Function()? clearLastNameWarningText,
    TResult? Function()? clearUserNameWarningText,
    TResult? Function()? clearEmailWarningText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firstName, String lastName, String username, String email)?
        registerUser,
    TResult Function()? clearFirstNameWarningText,
    TResult Function()? clearLastNameWarningText,
    TResult Function()? clearUserNameWarningText,
    TResult Function()? clearEmailWarningText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(ClearFirstNameWarningText value)
        clearFirstNameWarningText,
    required TResult Function(ClearLastNameWarningText value)
        clearLastNameWarningText,
    required TResult Function(ClearUserNameWarningText value)
        clearUserNameWarningText,
    required TResult Function(ClearEmailWarningText value)
        clearEmailWarningText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUser value)? registerUser,
    TResult? Function(ClearFirstNameWarningText value)?
        clearFirstNameWarningText,
    TResult? Function(ClearLastNameWarningText value)? clearLastNameWarningText,
    TResult? Function(ClearUserNameWarningText value)? clearUserNameWarningText,
    TResult? Function(ClearEmailWarningText value)? clearEmailWarningText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(ClearFirstNameWarningText value)?
        clearFirstNameWarningText,
    TResult Function(ClearLastNameWarningText value)? clearLastNameWarningText,
    TResult Function(ClearUserNameWarningText value)? clearUserNameWarningText,
    TResult Function(ClearEmailWarningText value)? clearEmailWarningText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterScreen_1_EventCopyWith<$Res> {
  factory $RegisterScreen_1_EventCopyWith(RegisterScreen_1_Event value,
          $Res Function(RegisterScreen_1_Event) then) =
      _$RegisterScreen_1_EventCopyWithImpl<$Res, RegisterScreen_1_Event>;
}

/// @nodoc
class _$RegisterScreen_1_EventCopyWithImpl<$Res,
        $Val extends RegisterScreen_1_Event>
    implements $RegisterScreen_1_EventCopyWith<$Res> {
  _$RegisterScreen_1_EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RegisterUserCopyWith<$Res> {
  factory _$$RegisterUserCopyWith(
          _$RegisterUser value, $Res Function(_$RegisterUser) then) =
      __$$RegisterUserCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName, String lastName, String username, String email});
}

/// @nodoc
class __$$RegisterUserCopyWithImpl<$Res>
    extends _$RegisterScreen_1_EventCopyWithImpl<$Res, _$RegisterUser>
    implements _$$RegisterUserCopyWith<$Res> {
  __$$RegisterUserCopyWithImpl(
      _$RegisterUser _value, $Res Function(_$RegisterUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? email = null,
  }) {
    return _then(_$RegisterUser(
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
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterUser implements RegisterUser {
  const _$RegisterUser(
      {required this.firstName,
      required this.lastName,
      required this.username,
      required this.email});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String username;
  @override
  final String email;

  @override
  String toString() {
    return 'RegisterScreen_1_Event.registerUser(firstName: $firstName, lastName: $lastName, username: $username, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterUser &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, firstName, lastName, username, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserCopyWith<_$RegisterUser> get copyWith =>
      __$$RegisterUserCopyWithImpl<_$RegisterUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firstName, String lastName, String username, String email)
        registerUser,
    required TResult Function() clearFirstNameWarningText,
    required TResult Function() clearLastNameWarningText,
    required TResult Function() clearUserNameWarningText,
    required TResult Function() clearEmailWarningText,
  }) {
    return registerUser(firstName, lastName, username, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String firstName, String lastName, String username, String email)?
        registerUser,
    TResult? Function()? clearFirstNameWarningText,
    TResult? Function()? clearLastNameWarningText,
    TResult? Function()? clearUserNameWarningText,
    TResult? Function()? clearEmailWarningText,
  }) {
    return registerUser?.call(firstName, lastName, username, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firstName, String lastName, String username, String email)?
        registerUser,
    TResult Function()? clearFirstNameWarningText,
    TResult Function()? clearLastNameWarningText,
    TResult Function()? clearUserNameWarningText,
    TResult Function()? clearEmailWarningText,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(firstName, lastName, username, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(ClearFirstNameWarningText value)
        clearFirstNameWarningText,
    required TResult Function(ClearLastNameWarningText value)
        clearLastNameWarningText,
    required TResult Function(ClearUserNameWarningText value)
        clearUserNameWarningText,
    required TResult Function(ClearEmailWarningText value)
        clearEmailWarningText,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUser value)? registerUser,
    TResult? Function(ClearFirstNameWarningText value)?
        clearFirstNameWarningText,
    TResult? Function(ClearLastNameWarningText value)? clearLastNameWarningText,
    TResult? Function(ClearUserNameWarningText value)? clearUserNameWarningText,
    TResult? Function(ClearEmailWarningText value)? clearEmailWarningText,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(ClearFirstNameWarningText value)?
        clearFirstNameWarningText,
    TResult Function(ClearLastNameWarningText value)? clearLastNameWarningText,
    TResult Function(ClearUserNameWarningText value)? clearUserNameWarningText,
    TResult Function(ClearEmailWarningText value)? clearEmailWarningText,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class RegisterUser implements RegisterScreen_1_Event {
  const factory RegisterUser(
      {required final String firstName,
      required final String lastName,
      required final String username,
      required final String email}) = _$RegisterUser;

  String get firstName;
  String get lastName;
  String get username;
  String get email;
  @JsonKey(ignore: true)
  _$$RegisterUserCopyWith<_$RegisterUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearFirstNameWarningTextCopyWith<$Res> {
  factory _$$ClearFirstNameWarningTextCopyWith(
          _$ClearFirstNameWarningText value,
          $Res Function(_$ClearFirstNameWarningText) then) =
      __$$ClearFirstNameWarningTextCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearFirstNameWarningTextCopyWithImpl<$Res>
    extends _$RegisterScreen_1_EventCopyWithImpl<$Res,
        _$ClearFirstNameWarningText>
    implements _$$ClearFirstNameWarningTextCopyWith<$Res> {
  __$$ClearFirstNameWarningTextCopyWithImpl(_$ClearFirstNameWarningText _value,
      $Res Function(_$ClearFirstNameWarningText) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearFirstNameWarningText implements ClearFirstNameWarningText {
  const _$ClearFirstNameWarningText();

  @override
  String toString() {
    return 'RegisterScreen_1_Event.clearFirstNameWarningText()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearFirstNameWarningText);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firstName, String lastName, String username, String email)
        registerUser,
    required TResult Function() clearFirstNameWarningText,
    required TResult Function() clearLastNameWarningText,
    required TResult Function() clearUserNameWarningText,
    required TResult Function() clearEmailWarningText,
  }) {
    return clearFirstNameWarningText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String firstName, String lastName, String username, String email)?
        registerUser,
    TResult? Function()? clearFirstNameWarningText,
    TResult? Function()? clearLastNameWarningText,
    TResult? Function()? clearUserNameWarningText,
    TResult? Function()? clearEmailWarningText,
  }) {
    return clearFirstNameWarningText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firstName, String lastName, String username, String email)?
        registerUser,
    TResult Function()? clearFirstNameWarningText,
    TResult Function()? clearLastNameWarningText,
    TResult Function()? clearUserNameWarningText,
    TResult Function()? clearEmailWarningText,
    required TResult orElse(),
  }) {
    if (clearFirstNameWarningText != null) {
      return clearFirstNameWarningText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(ClearFirstNameWarningText value)
        clearFirstNameWarningText,
    required TResult Function(ClearLastNameWarningText value)
        clearLastNameWarningText,
    required TResult Function(ClearUserNameWarningText value)
        clearUserNameWarningText,
    required TResult Function(ClearEmailWarningText value)
        clearEmailWarningText,
  }) {
    return clearFirstNameWarningText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUser value)? registerUser,
    TResult? Function(ClearFirstNameWarningText value)?
        clearFirstNameWarningText,
    TResult? Function(ClearLastNameWarningText value)? clearLastNameWarningText,
    TResult? Function(ClearUserNameWarningText value)? clearUserNameWarningText,
    TResult? Function(ClearEmailWarningText value)? clearEmailWarningText,
  }) {
    return clearFirstNameWarningText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(ClearFirstNameWarningText value)?
        clearFirstNameWarningText,
    TResult Function(ClearLastNameWarningText value)? clearLastNameWarningText,
    TResult Function(ClearUserNameWarningText value)? clearUserNameWarningText,
    TResult Function(ClearEmailWarningText value)? clearEmailWarningText,
    required TResult orElse(),
  }) {
    if (clearFirstNameWarningText != null) {
      return clearFirstNameWarningText(this);
    }
    return orElse();
  }
}

abstract class ClearFirstNameWarningText implements RegisterScreen_1_Event {
  const factory ClearFirstNameWarningText() = _$ClearFirstNameWarningText;
}

/// @nodoc
abstract class _$$ClearLastNameWarningTextCopyWith<$Res> {
  factory _$$ClearLastNameWarningTextCopyWith(_$ClearLastNameWarningText value,
          $Res Function(_$ClearLastNameWarningText) then) =
      __$$ClearLastNameWarningTextCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearLastNameWarningTextCopyWithImpl<$Res>
    extends _$RegisterScreen_1_EventCopyWithImpl<$Res,
        _$ClearLastNameWarningText>
    implements _$$ClearLastNameWarningTextCopyWith<$Res> {
  __$$ClearLastNameWarningTextCopyWithImpl(_$ClearLastNameWarningText _value,
      $Res Function(_$ClearLastNameWarningText) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearLastNameWarningText implements ClearLastNameWarningText {
  const _$ClearLastNameWarningText();

  @override
  String toString() {
    return 'RegisterScreen_1_Event.clearLastNameWarningText()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearLastNameWarningText);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firstName, String lastName, String username, String email)
        registerUser,
    required TResult Function() clearFirstNameWarningText,
    required TResult Function() clearLastNameWarningText,
    required TResult Function() clearUserNameWarningText,
    required TResult Function() clearEmailWarningText,
  }) {
    return clearLastNameWarningText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String firstName, String lastName, String username, String email)?
        registerUser,
    TResult? Function()? clearFirstNameWarningText,
    TResult? Function()? clearLastNameWarningText,
    TResult? Function()? clearUserNameWarningText,
    TResult? Function()? clearEmailWarningText,
  }) {
    return clearLastNameWarningText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firstName, String lastName, String username, String email)?
        registerUser,
    TResult Function()? clearFirstNameWarningText,
    TResult Function()? clearLastNameWarningText,
    TResult Function()? clearUserNameWarningText,
    TResult Function()? clearEmailWarningText,
    required TResult orElse(),
  }) {
    if (clearLastNameWarningText != null) {
      return clearLastNameWarningText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(ClearFirstNameWarningText value)
        clearFirstNameWarningText,
    required TResult Function(ClearLastNameWarningText value)
        clearLastNameWarningText,
    required TResult Function(ClearUserNameWarningText value)
        clearUserNameWarningText,
    required TResult Function(ClearEmailWarningText value)
        clearEmailWarningText,
  }) {
    return clearLastNameWarningText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUser value)? registerUser,
    TResult? Function(ClearFirstNameWarningText value)?
        clearFirstNameWarningText,
    TResult? Function(ClearLastNameWarningText value)? clearLastNameWarningText,
    TResult? Function(ClearUserNameWarningText value)? clearUserNameWarningText,
    TResult? Function(ClearEmailWarningText value)? clearEmailWarningText,
  }) {
    return clearLastNameWarningText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(ClearFirstNameWarningText value)?
        clearFirstNameWarningText,
    TResult Function(ClearLastNameWarningText value)? clearLastNameWarningText,
    TResult Function(ClearUserNameWarningText value)? clearUserNameWarningText,
    TResult Function(ClearEmailWarningText value)? clearEmailWarningText,
    required TResult orElse(),
  }) {
    if (clearLastNameWarningText != null) {
      return clearLastNameWarningText(this);
    }
    return orElse();
  }
}

abstract class ClearLastNameWarningText implements RegisterScreen_1_Event {
  const factory ClearLastNameWarningText() = _$ClearLastNameWarningText;
}

/// @nodoc
abstract class _$$ClearUserNameWarningTextCopyWith<$Res> {
  factory _$$ClearUserNameWarningTextCopyWith(_$ClearUserNameWarningText value,
          $Res Function(_$ClearUserNameWarningText) then) =
      __$$ClearUserNameWarningTextCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearUserNameWarningTextCopyWithImpl<$Res>
    extends _$RegisterScreen_1_EventCopyWithImpl<$Res,
        _$ClearUserNameWarningText>
    implements _$$ClearUserNameWarningTextCopyWith<$Res> {
  __$$ClearUserNameWarningTextCopyWithImpl(_$ClearUserNameWarningText _value,
      $Res Function(_$ClearUserNameWarningText) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearUserNameWarningText implements ClearUserNameWarningText {
  const _$ClearUserNameWarningText();

  @override
  String toString() {
    return 'RegisterScreen_1_Event.clearUserNameWarningText()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearUserNameWarningText);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firstName, String lastName, String username, String email)
        registerUser,
    required TResult Function() clearFirstNameWarningText,
    required TResult Function() clearLastNameWarningText,
    required TResult Function() clearUserNameWarningText,
    required TResult Function() clearEmailWarningText,
  }) {
    return clearUserNameWarningText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String firstName, String lastName, String username, String email)?
        registerUser,
    TResult? Function()? clearFirstNameWarningText,
    TResult? Function()? clearLastNameWarningText,
    TResult? Function()? clearUserNameWarningText,
    TResult? Function()? clearEmailWarningText,
  }) {
    return clearUserNameWarningText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firstName, String lastName, String username, String email)?
        registerUser,
    TResult Function()? clearFirstNameWarningText,
    TResult Function()? clearLastNameWarningText,
    TResult Function()? clearUserNameWarningText,
    TResult Function()? clearEmailWarningText,
    required TResult orElse(),
  }) {
    if (clearUserNameWarningText != null) {
      return clearUserNameWarningText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(ClearFirstNameWarningText value)
        clearFirstNameWarningText,
    required TResult Function(ClearLastNameWarningText value)
        clearLastNameWarningText,
    required TResult Function(ClearUserNameWarningText value)
        clearUserNameWarningText,
    required TResult Function(ClearEmailWarningText value)
        clearEmailWarningText,
  }) {
    return clearUserNameWarningText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUser value)? registerUser,
    TResult? Function(ClearFirstNameWarningText value)?
        clearFirstNameWarningText,
    TResult? Function(ClearLastNameWarningText value)? clearLastNameWarningText,
    TResult? Function(ClearUserNameWarningText value)? clearUserNameWarningText,
    TResult? Function(ClearEmailWarningText value)? clearEmailWarningText,
  }) {
    return clearUserNameWarningText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(ClearFirstNameWarningText value)?
        clearFirstNameWarningText,
    TResult Function(ClearLastNameWarningText value)? clearLastNameWarningText,
    TResult Function(ClearUserNameWarningText value)? clearUserNameWarningText,
    TResult Function(ClearEmailWarningText value)? clearEmailWarningText,
    required TResult orElse(),
  }) {
    if (clearUserNameWarningText != null) {
      return clearUserNameWarningText(this);
    }
    return orElse();
  }
}

abstract class ClearUserNameWarningText implements RegisterScreen_1_Event {
  const factory ClearUserNameWarningText() = _$ClearUserNameWarningText;
}

/// @nodoc
abstract class _$$ClearEmailWarningTextCopyWith<$Res> {
  factory _$$ClearEmailWarningTextCopyWith(_$ClearEmailWarningText value,
          $Res Function(_$ClearEmailWarningText) then) =
      __$$ClearEmailWarningTextCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearEmailWarningTextCopyWithImpl<$Res>
    extends _$RegisterScreen_1_EventCopyWithImpl<$Res, _$ClearEmailWarningText>
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
    return 'RegisterScreen_1_Event.clearEmailWarningText()';
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
    required TResult Function(
            String firstName, String lastName, String username, String email)
        registerUser,
    required TResult Function() clearFirstNameWarningText,
    required TResult Function() clearLastNameWarningText,
    required TResult Function() clearUserNameWarningText,
    required TResult Function() clearEmailWarningText,
  }) {
    return clearEmailWarningText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String firstName, String lastName, String username, String email)?
        registerUser,
    TResult? Function()? clearFirstNameWarningText,
    TResult? Function()? clearLastNameWarningText,
    TResult? Function()? clearUserNameWarningText,
    TResult? Function()? clearEmailWarningText,
  }) {
    return clearEmailWarningText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firstName, String lastName, String username, String email)?
        registerUser,
    TResult Function()? clearFirstNameWarningText,
    TResult Function()? clearLastNameWarningText,
    TResult Function()? clearUserNameWarningText,
    TResult Function()? clearEmailWarningText,
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
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(ClearFirstNameWarningText value)
        clearFirstNameWarningText,
    required TResult Function(ClearLastNameWarningText value)
        clearLastNameWarningText,
    required TResult Function(ClearUserNameWarningText value)
        clearUserNameWarningText,
    required TResult Function(ClearEmailWarningText value)
        clearEmailWarningText,
  }) {
    return clearEmailWarningText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUser value)? registerUser,
    TResult? Function(ClearFirstNameWarningText value)?
        clearFirstNameWarningText,
    TResult? Function(ClearLastNameWarningText value)? clearLastNameWarningText,
    TResult? Function(ClearUserNameWarningText value)? clearUserNameWarningText,
    TResult? Function(ClearEmailWarningText value)? clearEmailWarningText,
  }) {
    return clearEmailWarningText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(ClearFirstNameWarningText value)?
        clearFirstNameWarningText,
    TResult Function(ClearLastNameWarningText value)? clearLastNameWarningText,
    TResult Function(ClearUserNameWarningText value)? clearUserNameWarningText,
    TResult Function(ClearEmailWarningText value)? clearEmailWarningText,
    required TResult orElse(),
  }) {
    if (clearEmailWarningText != null) {
      return clearEmailWarningText(this);
    }
    return orElse();
  }
}

abstract class ClearEmailWarningText implements RegisterScreen_1_Event {
  const factory ClearEmailWarningText() = _$ClearEmailWarningText;
}

/// @nodoc
mixin _$RegisterScreen_1_State {
  bool get isRegisterScreen1Validated => throw _privateConstructorUsedError;
  String get firstNameWarningText => throw _privateConstructorUsedError;
  String get lastNameWarningText => throw _privateConstructorUsedError;
  String get usernameWarningText => throw _privateConstructorUsedError;
  String get emailWarningText => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isRegisterScreen1Validated,
            String firstNameWarningText,
            String lastNameWarningText,
            String usernameWarningText,
            String emailWarningText)
        currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isRegisterScreen1Validated,
            String firstNameWarningText,
            String lastNameWarningText,
            String usernameWarningText,
            String emailWarningText)?
        currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isRegisterScreen1Validated,
            String firstNameWarningText,
            String lastNameWarningText,
            String usernameWarningText,
            String emailWarningText)?
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
  $RegisterScreen_1_StateCopyWith<RegisterScreen_1_State> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterScreen_1_StateCopyWith<$Res> {
  factory $RegisterScreen_1_StateCopyWith(RegisterScreen_1_State value,
          $Res Function(RegisterScreen_1_State) then) =
      _$RegisterScreen_1_StateCopyWithImpl<$Res, RegisterScreen_1_State>;
  @useResult
  $Res call(
      {bool isRegisterScreen1Validated,
      String firstNameWarningText,
      String lastNameWarningText,
      String usernameWarningText,
      String emailWarningText});
}

/// @nodoc
class _$RegisterScreen_1_StateCopyWithImpl<$Res,
        $Val extends RegisterScreen_1_State>
    implements $RegisterScreen_1_StateCopyWith<$Res> {
  _$RegisterScreen_1_StateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRegisterScreen1Validated = null,
    Object? firstNameWarningText = null,
    Object? lastNameWarningText = null,
    Object? usernameWarningText = null,
    Object? emailWarningText = null,
  }) {
    return _then(_value.copyWith(
      isRegisterScreen1Validated: null == isRegisterScreen1Validated
          ? _value.isRegisterScreen1Validated
          : isRegisterScreen1Validated // ignore: cast_nullable_to_non_nullable
              as bool,
      firstNameWarningText: null == firstNameWarningText
          ? _value.firstNameWarningText
          : firstNameWarningText // ignore: cast_nullable_to_non_nullable
              as String,
      lastNameWarningText: null == lastNameWarningText
          ? _value.lastNameWarningText
          : lastNameWarningText // ignore: cast_nullable_to_non_nullable
              as String,
      usernameWarningText: null == usernameWarningText
          ? _value.usernameWarningText
          : usernameWarningText // ignore: cast_nullable_to_non_nullable
              as String,
      emailWarningText: null == emailWarningText
          ? _value.emailWarningText
          : emailWarningText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $RegisterScreen_1_StateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isRegisterScreen1Validated,
      String firstNameWarningText,
      String lastNameWarningText,
      String usernameWarningText,
      String emailWarningText});
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$RegisterScreen_1_StateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRegisterScreen1Validated = null,
    Object? firstNameWarningText = null,
    Object? lastNameWarningText = null,
    Object? usernameWarningText = null,
    Object? emailWarningText = null,
  }) {
    return _then(_$Initial(
      isRegisterScreen1Validated: null == isRegisterScreen1Validated
          ? _value.isRegisterScreen1Validated
          : isRegisterScreen1Validated // ignore: cast_nullable_to_non_nullable
              as bool,
      firstNameWarningText: null == firstNameWarningText
          ? _value.firstNameWarningText
          : firstNameWarningText // ignore: cast_nullable_to_non_nullable
              as String,
      lastNameWarningText: null == lastNameWarningText
          ? _value.lastNameWarningText
          : lastNameWarningText // ignore: cast_nullable_to_non_nullable
              as String,
      usernameWarningText: null == usernameWarningText
          ? _value.usernameWarningText
          : usernameWarningText // ignore: cast_nullable_to_non_nullable
              as String,
      emailWarningText: null == emailWarningText
          ? _value.emailWarningText
          : emailWarningText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial(
      {required this.isRegisterScreen1Validated,
      required this.firstNameWarningText,
      required this.lastNameWarningText,
      required this.usernameWarningText,
      required this.emailWarningText});

  @override
  final bool isRegisterScreen1Validated;
  @override
  final String firstNameWarningText;
  @override
  final String lastNameWarningText;
  @override
  final String usernameWarningText;
  @override
  final String emailWarningText;

  @override
  String toString() {
    return 'RegisterScreen_1_State.currentState(isRegisterScreen1Validated: $isRegisterScreen1Validated, firstNameWarningText: $firstNameWarningText, lastNameWarningText: $lastNameWarningText, usernameWarningText: $usernameWarningText, emailWarningText: $emailWarningText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            (identical(other.isRegisterScreen1Validated,
                    isRegisterScreen1Validated) ||
                other.isRegisterScreen1Validated ==
                    isRegisterScreen1Validated) &&
            (identical(other.firstNameWarningText, firstNameWarningText) ||
                other.firstNameWarningText == firstNameWarningText) &&
            (identical(other.lastNameWarningText, lastNameWarningText) ||
                other.lastNameWarningText == lastNameWarningText) &&
            (identical(other.usernameWarningText, usernameWarningText) ||
                other.usernameWarningText == usernameWarningText) &&
            (identical(other.emailWarningText, emailWarningText) ||
                other.emailWarningText == emailWarningText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isRegisterScreen1Validated,
      firstNameWarningText,
      lastNameWarningText,
      usernameWarningText,
      emailWarningText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isRegisterScreen1Validated,
            String firstNameWarningText,
            String lastNameWarningText,
            String usernameWarningText,
            String emailWarningText)
        currentState,
  }) {
    return currentState(isRegisterScreen1Validated, firstNameWarningText,
        lastNameWarningText, usernameWarningText, emailWarningText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isRegisterScreen1Validated,
            String firstNameWarningText,
            String lastNameWarningText,
            String usernameWarningText,
            String emailWarningText)?
        currentState,
  }) {
    return currentState?.call(isRegisterScreen1Validated, firstNameWarningText,
        lastNameWarningText, usernameWarningText, emailWarningText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isRegisterScreen1Validated,
            String firstNameWarningText,
            String lastNameWarningText,
            String usernameWarningText,
            String emailWarningText)?
        currentState,
    required TResult orElse(),
  }) {
    if (currentState != null) {
      return currentState(isRegisterScreen1Validated, firstNameWarningText,
          lastNameWarningText, usernameWarningText, emailWarningText);
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

abstract class Initial implements RegisterScreen_1_State {
  const factory Initial(
      {required final bool isRegisterScreen1Validated,
      required final String firstNameWarningText,
      required final String lastNameWarningText,
      required final String usernameWarningText,
      required final String emailWarningText}) = _$Initial;

  @override
  bool get isRegisterScreen1Validated;
  @override
  String get firstNameWarningText;
  @override
  String get lastNameWarningText;
  @override
  String get usernameWarningText;
  @override
  String get emailWarningText;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
