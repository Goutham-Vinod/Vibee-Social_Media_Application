// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_screen_2_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterScreen_2_Event {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firstName,
            String lastName,
            String username,
            String email,
            String phoneNumber,
            String password,
            String confirmPassword)
        registerUser,
    required TResult Function() clearPhoneNumberWarningText,
    required TResult Function() clearPasswordWarningText,
    required TResult Function() clearConfirmPasswordWarningText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String firstName,
            String lastName,
            String username,
            String email,
            String phoneNumber,
            String password,
            String confirmPassword)?
        registerUser,
    TResult? Function()? clearPhoneNumberWarningText,
    TResult? Function()? clearPasswordWarningText,
    TResult? Function()? clearConfirmPasswordWarningText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firstName,
            String lastName,
            String username,
            String email,
            String phoneNumber,
            String password,
            String confirmPassword)?
        registerUser,
    TResult Function()? clearPhoneNumberWarningText,
    TResult Function()? clearPasswordWarningText,
    TResult Function()? clearConfirmPasswordWarningText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(ClearPhoneNumberWarningText value)
        clearPhoneNumberWarningText,
    required TResult Function(ClearPasswordWarningText value)
        clearPasswordWarningText,
    required TResult Function(ClearConfirmPasswordWarningText value)
        clearConfirmPasswordWarningText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUser value)? registerUser,
    TResult? Function(ClearPhoneNumberWarningText value)?
        clearPhoneNumberWarningText,
    TResult? Function(ClearPasswordWarningText value)? clearPasswordWarningText,
    TResult? Function(ClearConfirmPasswordWarningText value)?
        clearConfirmPasswordWarningText,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(ClearPhoneNumberWarningText value)?
        clearPhoneNumberWarningText,
    TResult Function(ClearPasswordWarningText value)? clearPasswordWarningText,
    TResult Function(ClearConfirmPasswordWarningText value)?
        clearConfirmPasswordWarningText,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterScreen_2_EventCopyWith<$Res> {
  factory $RegisterScreen_2_EventCopyWith(RegisterScreen_2_Event value,
          $Res Function(RegisterScreen_2_Event) then) =
      _$RegisterScreen_2_EventCopyWithImpl<$Res, RegisterScreen_2_Event>;
}

/// @nodoc
class _$RegisterScreen_2_EventCopyWithImpl<$Res,
        $Val extends RegisterScreen_2_Event>
    implements $RegisterScreen_2_EventCopyWith<$Res> {
  _$RegisterScreen_2_EventCopyWithImpl(this._value, this._then);

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
  $Res call(
      {String firstName,
      String lastName,
      String username,
      String email,
      String phoneNumber,
      String password,
      String confirmPassword});
}

/// @nodoc
class __$$RegisterUserCopyWithImpl<$Res>
    extends _$RegisterScreen_2_EventCopyWithImpl<$Res, _$RegisterUser>
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
    Object? phoneNumber = null,
    Object? password = null,
    Object? confirmPassword = null,
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
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPassword: null == confirmPassword
          ? _value.confirmPassword
          : confirmPassword // ignore: cast_nullable_to_non_nullable
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
      required this.email,
      required this.phoneNumber,
      required this.password,
      required this.confirmPassword});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String username;
  @override
  final String email;
  @override
  final String phoneNumber;
  @override
  final String password;
  @override
  final String confirmPassword;

  @override
  String toString() {
    return 'RegisterScreen_2_Event.registerUser(firstName: $firstName, lastName: $lastName, username: $username, email: $email, phoneNumber: $phoneNumber, password: $password, confirmPassword: $confirmPassword)';
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
            (identical(other.email, email) || other.email == email) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.confirmPassword, confirmPassword) ||
                other.confirmPassword == confirmPassword));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName, lastName, username,
      email, phoneNumber, password, confirmPassword);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterUserCopyWith<_$RegisterUser> get copyWith =>
      __$$RegisterUserCopyWithImpl<_$RegisterUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firstName,
            String lastName,
            String username,
            String email,
            String phoneNumber,
            String password,
            String confirmPassword)
        registerUser,
    required TResult Function() clearPhoneNumberWarningText,
    required TResult Function() clearPasswordWarningText,
    required TResult Function() clearConfirmPasswordWarningText,
  }) {
    return registerUser(firstName, lastName, username, email, phoneNumber,
        password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String firstName,
            String lastName,
            String username,
            String email,
            String phoneNumber,
            String password,
            String confirmPassword)?
        registerUser,
    TResult? Function()? clearPhoneNumberWarningText,
    TResult? Function()? clearPasswordWarningText,
    TResult? Function()? clearConfirmPasswordWarningText,
  }) {
    return registerUser?.call(firstName, lastName, username, email, phoneNumber,
        password, confirmPassword);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firstName,
            String lastName,
            String username,
            String email,
            String phoneNumber,
            String password,
            String confirmPassword)?
        registerUser,
    TResult Function()? clearPhoneNumberWarningText,
    TResult Function()? clearPasswordWarningText,
    TResult Function()? clearConfirmPasswordWarningText,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(firstName, lastName, username, email, phoneNumber,
          password, confirmPassword);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(ClearPhoneNumberWarningText value)
        clearPhoneNumberWarningText,
    required TResult Function(ClearPasswordWarningText value)
        clearPasswordWarningText,
    required TResult Function(ClearConfirmPasswordWarningText value)
        clearConfirmPasswordWarningText,
  }) {
    return registerUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUser value)? registerUser,
    TResult? Function(ClearPhoneNumberWarningText value)?
        clearPhoneNumberWarningText,
    TResult? Function(ClearPasswordWarningText value)? clearPasswordWarningText,
    TResult? Function(ClearConfirmPasswordWarningText value)?
        clearConfirmPasswordWarningText,
  }) {
    return registerUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(ClearPhoneNumberWarningText value)?
        clearPhoneNumberWarningText,
    TResult Function(ClearPasswordWarningText value)? clearPasswordWarningText,
    TResult Function(ClearConfirmPasswordWarningText value)?
        clearConfirmPasswordWarningText,
    required TResult orElse(),
  }) {
    if (registerUser != null) {
      return registerUser(this);
    }
    return orElse();
  }
}

abstract class RegisterUser implements RegisterScreen_2_Event {
  const factory RegisterUser(
      {required final String firstName,
      required final String lastName,
      required final String username,
      required final String email,
      required final String phoneNumber,
      required final String password,
      required final String confirmPassword}) = _$RegisterUser;

  String get firstName;
  String get lastName;
  String get username;
  String get email;
  String get phoneNumber;
  String get password;
  String get confirmPassword;
  @JsonKey(ignore: true)
  _$$RegisterUserCopyWith<_$RegisterUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ClearPhoneNumberWarningTextCopyWith<$Res> {
  factory _$$ClearPhoneNumberWarningTextCopyWith(
          _$ClearPhoneNumberWarningText value,
          $Res Function(_$ClearPhoneNumberWarningText) then) =
      __$$ClearPhoneNumberWarningTextCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPhoneNumberWarningTextCopyWithImpl<$Res>
    extends _$RegisterScreen_2_EventCopyWithImpl<$Res,
        _$ClearPhoneNumberWarningText>
    implements _$$ClearPhoneNumberWarningTextCopyWith<$Res> {
  __$$ClearPhoneNumberWarningTextCopyWithImpl(
      _$ClearPhoneNumberWarningText _value,
      $Res Function(_$ClearPhoneNumberWarningText) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearPhoneNumberWarningText implements ClearPhoneNumberWarningText {
  const _$ClearPhoneNumberWarningText();

  @override
  String toString() {
    return 'RegisterScreen_2_Event.clearPhoneNumberWarningText()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearPhoneNumberWarningText);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firstName,
            String lastName,
            String username,
            String email,
            String phoneNumber,
            String password,
            String confirmPassword)
        registerUser,
    required TResult Function() clearPhoneNumberWarningText,
    required TResult Function() clearPasswordWarningText,
    required TResult Function() clearConfirmPasswordWarningText,
  }) {
    return clearPhoneNumberWarningText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String firstName,
            String lastName,
            String username,
            String email,
            String phoneNumber,
            String password,
            String confirmPassword)?
        registerUser,
    TResult? Function()? clearPhoneNumberWarningText,
    TResult? Function()? clearPasswordWarningText,
    TResult? Function()? clearConfirmPasswordWarningText,
  }) {
    return clearPhoneNumberWarningText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firstName,
            String lastName,
            String username,
            String email,
            String phoneNumber,
            String password,
            String confirmPassword)?
        registerUser,
    TResult Function()? clearPhoneNumberWarningText,
    TResult Function()? clearPasswordWarningText,
    TResult Function()? clearConfirmPasswordWarningText,
    required TResult orElse(),
  }) {
    if (clearPhoneNumberWarningText != null) {
      return clearPhoneNumberWarningText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(ClearPhoneNumberWarningText value)
        clearPhoneNumberWarningText,
    required TResult Function(ClearPasswordWarningText value)
        clearPasswordWarningText,
    required TResult Function(ClearConfirmPasswordWarningText value)
        clearConfirmPasswordWarningText,
  }) {
    return clearPhoneNumberWarningText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUser value)? registerUser,
    TResult? Function(ClearPhoneNumberWarningText value)?
        clearPhoneNumberWarningText,
    TResult? Function(ClearPasswordWarningText value)? clearPasswordWarningText,
    TResult? Function(ClearConfirmPasswordWarningText value)?
        clearConfirmPasswordWarningText,
  }) {
    return clearPhoneNumberWarningText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(ClearPhoneNumberWarningText value)?
        clearPhoneNumberWarningText,
    TResult Function(ClearPasswordWarningText value)? clearPasswordWarningText,
    TResult Function(ClearConfirmPasswordWarningText value)?
        clearConfirmPasswordWarningText,
    required TResult orElse(),
  }) {
    if (clearPhoneNumberWarningText != null) {
      return clearPhoneNumberWarningText(this);
    }
    return orElse();
  }
}

abstract class ClearPhoneNumberWarningText implements RegisterScreen_2_Event {
  const factory ClearPhoneNumberWarningText() = _$ClearPhoneNumberWarningText;
}

/// @nodoc
abstract class _$$ClearPasswordWarningTextCopyWith<$Res> {
  factory _$$ClearPasswordWarningTextCopyWith(_$ClearPasswordWarningText value,
          $Res Function(_$ClearPasswordWarningText) then) =
      __$$ClearPasswordWarningTextCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearPasswordWarningTextCopyWithImpl<$Res>
    extends _$RegisterScreen_2_EventCopyWithImpl<$Res,
        _$ClearPasswordWarningText>
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
    return 'RegisterScreen_2_Event.clearPasswordWarningText()';
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
    required TResult Function(
            String firstName,
            String lastName,
            String username,
            String email,
            String phoneNumber,
            String password,
            String confirmPassword)
        registerUser,
    required TResult Function() clearPhoneNumberWarningText,
    required TResult Function() clearPasswordWarningText,
    required TResult Function() clearConfirmPasswordWarningText,
  }) {
    return clearPasswordWarningText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String firstName,
            String lastName,
            String username,
            String email,
            String phoneNumber,
            String password,
            String confirmPassword)?
        registerUser,
    TResult? Function()? clearPhoneNumberWarningText,
    TResult? Function()? clearPasswordWarningText,
    TResult? Function()? clearConfirmPasswordWarningText,
  }) {
    return clearPasswordWarningText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firstName,
            String lastName,
            String username,
            String email,
            String phoneNumber,
            String password,
            String confirmPassword)?
        registerUser,
    TResult Function()? clearPhoneNumberWarningText,
    TResult Function()? clearPasswordWarningText,
    TResult Function()? clearConfirmPasswordWarningText,
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
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(ClearPhoneNumberWarningText value)
        clearPhoneNumberWarningText,
    required TResult Function(ClearPasswordWarningText value)
        clearPasswordWarningText,
    required TResult Function(ClearConfirmPasswordWarningText value)
        clearConfirmPasswordWarningText,
  }) {
    return clearPasswordWarningText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUser value)? registerUser,
    TResult? Function(ClearPhoneNumberWarningText value)?
        clearPhoneNumberWarningText,
    TResult? Function(ClearPasswordWarningText value)? clearPasswordWarningText,
    TResult? Function(ClearConfirmPasswordWarningText value)?
        clearConfirmPasswordWarningText,
  }) {
    return clearPasswordWarningText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(ClearPhoneNumberWarningText value)?
        clearPhoneNumberWarningText,
    TResult Function(ClearPasswordWarningText value)? clearPasswordWarningText,
    TResult Function(ClearConfirmPasswordWarningText value)?
        clearConfirmPasswordWarningText,
    required TResult orElse(),
  }) {
    if (clearPasswordWarningText != null) {
      return clearPasswordWarningText(this);
    }
    return orElse();
  }
}

abstract class ClearPasswordWarningText implements RegisterScreen_2_Event {
  const factory ClearPasswordWarningText() = _$ClearPasswordWarningText;
}

/// @nodoc
abstract class _$$ClearConfirmPasswordWarningTextCopyWith<$Res> {
  factory _$$ClearConfirmPasswordWarningTextCopyWith(
          _$ClearConfirmPasswordWarningText value,
          $Res Function(_$ClearConfirmPasswordWarningText) then) =
      __$$ClearConfirmPasswordWarningTextCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ClearConfirmPasswordWarningTextCopyWithImpl<$Res>
    extends _$RegisterScreen_2_EventCopyWithImpl<$Res,
        _$ClearConfirmPasswordWarningText>
    implements _$$ClearConfirmPasswordWarningTextCopyWith<$Res> {
  __$$ClearConfirmPasswordWarningTextCopyWithImpl(
      _$ClearConfirmPasswordWarningText _value,
      $Res Function(_$ClearConfirmPasswordWarningText) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ClearConfirmPasswordWarningText
    implements ClearConfirmPasswordWarningText {
  const _$ClearConfirmPasswordWarningText();

  @override
  String toString() {
    return 'RegisterScreen_2_Event.clearConfirmPasswordWarningText()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ClearConfirmPasswordWarningText);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String firstName,
            String lastName,
            String username,
            String email,
            String phoneNumber,
            String password,
            String confirmPassword)
        registerUser,
    required TResult Function() clearPhoneNumberWarningText,
    required TResult Function() clearPasswordWarningText,
    required TResult Function() clearConfirmPasswordWarningText,
  }) {
    return clearConfirmPasswordWarningText();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            String firstName,
            String lastName,
            String username,
            String email,
            String phoneNumber,
            String password,
            String confirmPassword)?
        registerUser,
    TResult? Function()? clearPhoneNumberWarningText,
    TResult? Function()? clearPasswordWarningText,
    TResult? Function()? clearConfirmPasswordWarningText,
  }) {
    return clearConfirmPasswordWarningText?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            String firstName,
            String lastName,
            String username,
            String email,
            String phoneNumber,
            String password,
            String confirmPassword)?
        registerUser,
    TResult Function()? clearPhoneNumberWarningText,
    TResult Function()? clearPasswordWarningText,
    TResult Function()? clearConfirmPasswordWarningText,
    required TResult orElse(),
  }) {
    if (clearConfirmPasswordWarningText != null) {
      return clearConfirmPasswordWarningText();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(RegisterUser value) registerUser,
    required TResult Function(ClearPhoneNumberWarningText value)
        clearPhoneNumberWarningText,
    required TResult Function(ClearPasswordWarningText value)
        clearPasswordWarningText,
    required TResult Function(ClearConfirmPasswordWarningText value)
        clearConfirmPasswordWarningText,
  }) {
    return clearConfirmPasswordWarningText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RegisterUser value)? registerUser,
    TResult? Function(ClearPhoneNumberWarningText value)?
        clearPhoneNumberWarningText,
    TResult? Function(ClearPasswordWarningText value)? clearPasswordWarningText,
    TResult? Function(ClearConfirmPasswordWarningText value)?
        clearConfirmPasswordWarningText,
  }) {
    return clearConfirmPasswordWarningText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RegisterUser value)? registerUser,
    TResult Function(ClearPhoneNumberWarningText value)?
        clearPhoneNumberWarningText,
    TResult Function(ClearPasswordWarningText value)? clearPasswordWarningText,
    TResult Function(ClearConfirmPasswordWarningText value)?
        clearConfirmPasswordWarningText,
    required TResult orElse(),
  }) {
    if (clearConfirmPasswordWarningText != null) {
      return clearConfirmPasswordWarningText(this);
    }
    return orElse();
  }
}

abstract class ClearConfirmPasswordWarningText
    implements RegisterScreen_2_Event {
  const factory ClearConfirmPasswordWarningText() =
      _$ClearConfirmPasswordWarningText;
}

/// @nodoc
mixin _$RegisterScreen_2_State {
  Option<Either<ApiFailure, bool>> get isValidationCompleted =>
      throw _privateConstructorUsedError;
  bool get isFrontendValidationSuccess => throw _privateConstructorUsedError;
  String get phoneNumberWarningText => throw _privateConstructorUsedError;
  String get passwordWarningText => throw _privateConstructorUsedError;
  String get confirmPasswordWarningText => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<Either<ApiFailure, bool>> isValidationCompleted,
            bool isFrontendValidationSuccess,
            String phoneNumberWarningText,
            String passwordWarningText,
            String confirmPasswordWarningText)
        currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<Either<ApiFailure, bool>> isValidationCompleted,
            bool isFrontendValidationSuccess,
            String phoneNumberWarningText,
            String passwordWarningText,
            String confirmPasswordWarningText)?
        currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<Either<ApiFailure, bool>> isValidationCompleted,
            bool isFrontendValidationSuccess,
            String phoneNumberWarningText,
            String passwordWarningText,
            String confirmPasswordWarningText)?
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
  $RegisterScreen_2_StateCopyWith<RegisterScreen_2_State> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterScreen_2_StateCopyWith<$Res> {
  factory $RegisterScreen_2_StateCopyWith(RegisterScreen_2_State value,
          $Res Function(RegisterScreen_2_State) then) =
      _$RegisterScreen_2_StateCopyWithImpl<$Res, RegisterScreen_2_State>;
  @useResult
  $Res call(
      {Option<Either<ApiFailure, bool>> isValidationCompleted,
      bool isFrontendValidationSuccess,
      String phoneNumberWarningText,
      String passwordWarningText,
      String confirmPasswordWarningText});
}

/// @nodoc
class _$RegisterScreen_2_StateCopyWithImpl<$Res,
        $Val extends RegisterScreen_2_State>
    implements $RegisterScreen_2_StateCopyWith<$Res> {
  _$RegisterScreen_2_StateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValidationCompleted = null,
    Object? isFrontendValidationSuccess = null,
    Object? phoneNumberWarningText = null,
    Object? passwordWarningText = null,
    Object? confirmPasswordWarningText = null,
  }) {
    return _then(_value.copyWith(
      isValidationCompleted: null == isValidationCompleted
          ? _value.isValidationCompleted
          : isValidationCompleted // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, bool>>,
      isFrontendValidationSuccess: null == isFrontendValidationSuccess
          ? _value.isFrontendValidationSuccess
          : isFrontendValidationSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumberWarningText: null == phoneNumberWarningText
          ? _value.phoneNumberWarningText
          : phoneNumberWarningText // ignore: cast_nullable_to_non_nullable
              as String,
      passwordWarningText: null == passwordWarningText
          ? _value.passwordWarningText
          : passwordWarningText // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPasswordWarningText: null == confirmPasswordWarningText
          ? _value.confirmPasswordWarningText
          : confirmPasswordWarningText // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialCopyWith<$Res>
    implements $RegisterScreen_2_StateCopyWith<$Res> {
  factory _$$InitialCopyWith(_$Initial value, $Res Function(_$Initial) then) =
      __$$InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Either<ApiFailure, bool>> isValidationCompleted,
      bool isFrontendValidationSuccess,
      String phoneNumberWarningText,
      String passwordWarningText,
      String confirmPasswordWarningText});
}

/// @nodoc
class __$$InitialCopyWithImpl<$Res>
    extends _$RegisterScreen_2_StateCopyWithImpl<$Res, _$Initial>
    implements _$$InitialCopyWith<$Res> {
  __$$InitialCopyWithImpl(_$Initial _value, $Res Function(_$Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isValidationCompleted = null,
    Object? isFrontendValidationSuccess = null,
    Object? phoneNumberWarningText = null,
    Object? passwordWarningText = null,
    Object? confirmPasswordWarningText = null,
  }) {
    return _then(_$Initial(
      isValidationCompleted: null == isValidationCompleted
          ? _value.isValidationCompleted
          : isValidationCompleted // ignore: cast_nullable_to_non_nullable
              as Option<Either<ApiFailure, bool>>,
      isFrontendValidationSuccess: null == isFrontendValidationSuccess
          ? _value.isFrontendValidationSuccess
          : isFrontendValidationSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      phoneNumberWarningText: null == phoneNumberWarningText
          ? _value.phoneNumberWarningText
          : phoneNumberWarningText // ignore: cast_nullable_to_non_nullable
              as String,
      passwordWarningText: null == passwordWarningText
          ? _value.passwordWarningText
          : passwordWarningText // ignore: cast_nullable_to_non_nullable
              as String,
      confirmPasswordWarningText: null == confirmPasswordWarningText
          ? _value.confirmPasswordWarningText
          : confirmPasswordWarningText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial(
      {required this.isValidationCompleted,
      required this.isFrontendValidationSuccess,
      required this.phoneNumberWarningText,
      required this.passwordWarningText,
      required this.confirmPasswordWarningText});

  @override
  final Option<Either<ApiFailure, bool>> isValidationCompleted;
  @override
  final bool isFrontendValidationSuccess;
  @override
  final String phoneNumberWarningText;
  @override
  final String passwordWarningText;
  @override
  final String confirmPasswordWarningText;

  @override
  String toString() {
    return 'RegisterScreen_2_State.currentState(isValidationCompleted: $isValidationCompleted, isFrontendValidationSuccess: $isFrontendValidationSuccess, phoneNumberWarningText: $phoneNumberWarningText, passwordWarningText: $passwordWarningText, confirmPasswordWarningText: $confirmPasswordWarningText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Initial &&
            (identical(other.isValidationCompleted, isValidationCompleted) ||
                other.isValidationCompleted == isValidationCompleted) &&
            (identical(other.isFrontendValidationSuccess,
                    isFrontendValidationSuccess) ||
                other.isFrontendValidationSuccess ==
                    isFrontendValidationSuccess) &&
            (identical(other.phoneNumberWarningText, phoneNumberWarningText) ||
                other.phoneNumberWarningText == phoneNumberWarningText) &&
            (identical(other.passwordWarningText, passwordWarningText) ||
                other.passwordWarningText == passwordWarningText) &&
            (identical(other.confirmPasswordWarningText,
                    confirmPasswordWarningText) ||
                other.confirmPasswordWarningText ==
                    confirmPasswordWarningText));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isValidationCompleted,
      isFrontendValidationSuccess,
      phoneNumberWarningText,
      passwordWarningText,
      confirmPasswordWarningText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialCopyWith<_$Initial> get copyWith =>
      __$$InitialCopyWithImpl<_$Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            Option<Either<ApiFailure, bool>> isValidationCompleted,
            bool isFrontendValidationSuccess,
            String phoneNumberWarningText,
            String passwordWarningText,
            String confirmPasswordWarningText)
        currentState,
  }) {
    return currentState(
        isValidationCompleted,
        isFrontendValidationSuccess,
        phoneNumberWarningText,
        passwordWarningText,
        confirmPasswordWarningText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            Option<Either<ApiFailure, bool>> isValidationCompleted,
            bool isFrontendValidationSuccess,
            String phoneNumberWarningText,
            String passwordWarningText,
            String confirmPasswordWarningText)?
        currentState,
  }) {
    return currentState?.call(
        isValidationCompleted,
        isFrontendValidationSuccess,
        phoneNumberWarningText,
        passwordWarningText,
        confirmPasswordWarningText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            Option<Either<ApiFailure, bool>> isValidationCompleted,
            bool isFrontendValidationSuccess,
            String phoneNumberWarningText,
            String passwordWarningText,
            String confirmPasswordWarningText)?
        currentState,
    required TResult orElse(),
  }) {
    if (currentState != null) {
      return currentState(
          isValidationCompleted,
          isFrontendValidationSuccess,
          phoneNumberWarningText,
          passwordWarningText,
          confirmPasswordWarningText);
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

abstract class Initial implements RegisterScreen_2_State {
  const factory Initial(
      {required final Option<Either<ApiFailure, bool>> isValidationCompleted,
      required final bool isFrontendValidationSuccess,
      required final String phoneNumberWarningText,
      required final String passwordWarningText,
      required final String confirmPasswordWarningText}) = _$Initial;

  @override
  Option<Either<ApiFailure, bool>> get isValidationCompleted;
  @override
  bool get isFrontendValidationSuccess;
  @override
  String get phoneNumberWarningText;
  @override
  String get passwordWarningText;
  @override
  String get confirmPasswordWarningText;
  @override
  @JsonKey(ignore: true)
  _$$InitialCopyWith<_$Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
