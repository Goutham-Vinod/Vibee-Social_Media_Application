// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditProfileScreenEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeScreen,
    required TResult Function(DateTime dob) refreshDobUi,
    required TResult Function(String firstName, String lastName,
            String username, DateTime dob, String location, String email)
        updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeScreen,
    TResult? Function(DateTime dob)? refreshDobUi,
    TResult? Function(String firstName, String lastName, String username,
            DateTime dob, String location, String email)?
        updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeScreen,
    TResult Function(DateTime dob)? refreshDobUi,
    TResult Function(String firstName, String lastName, String username,
            DateTime dob, String location, String email)?
        updateProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeScreen value) initializeScreen,
    required TResult Function(RefreshDobUi value) refreshDobUi,
    required TResult Function(UpdateProfile value) updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeScreen value)? initializeScreen,
    TResult? Function(RefreshDobUi value)? refreshDobUi,
    TResult? Function(UpdateProfile value)? updateProfile,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeScreen value)? initializeScreen,
    TResult Function(RefreshDobUi value)? refreshDobUi,
    TResult Function(UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileScreenEventCopyWith<$Res> {
  factory $EditProfileScreenEventCopyWith(EditProfileScreenEvent value,
          $Res Function(EditProfileScreenEvent) then) =
      _$EditProfileScreenEventCopyWithImpl<$Res, EditProfileScreenEvent>;
}

/// @nodoc
class _$EditProfileScreenEventCopyWithImpl<$Res,
        $Val extends EditProfileScreenEvent>
    implements $EditProfileScreenEventCopyWith<$Res> {
  _$EditProfileScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitializeScreenCopyWith<$Res> {
  factory _$$InitializeScreenCopyWith(
          _$InitializeScreen value, $Res Function(_$InitializeScreen) then) =
      __$$InitializeScreenCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitializeScreenCopyWithImpl<$Res>
    extends _$EditProfileScreenEventCopyWithImpl<$Res, _$InitializeScreen>
    implements _$$InitializeScreenCopyWith<$Res> {
  __$$InitializeScreenCopyWithImpl(
      _$InitializeScreen _value, $Res Function(_$InitializeScreen) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitializeScreen implements InitializeScreen {
  const _$InitializeScreen();

  @override
  String toString() {
    return 'EditProfileScreenEvent.initializeScreen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitializeScreen);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeScreen,
    required TResult Function(DateTime dob) refreshDobUi,
    required TResult Function(String firstName, String lastName,
            String username, DateTime dob, String location, String email)
        updateProfile,
  }) {
    return initializeScreen();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeScreen,
    TResult? Function(DateTime dob)? refreshDobUi,
    TResult? Function(String firstName, String lastName, String username,
            DateTime dob, String location, String email)?
        updateProfile,
  }) {
    return initializeScreen?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeScreen,
    TResult Function(DateTime dob)? refreshDobUi,
    TResult Function(String firstName, String lastName, String username,
            DateTime dob, String location, String email)?
        updateProfile,
    required TResult orElse(),
  }) {
    if (initializeScreen != null) {
      return initializeScreen();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeScreen value) initializeScreen,
    required TResult Function(RefreshDobUi value) refreshDobUi,
    required TResult Function(UpdateProfile value) updateProfile,
  }) {
    return initializeScreen(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeScreen value)? initializeScreen,
    TResult? Function(RefreshDobUi value)? refreshDobUi,
    TResult? Function(UpdateProfile value)? updateProfile,
  }) {
    return initializeScreen?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeScreen value)? initializeScreen,
    TResult Function(RefreshDobUi value)? refreshDobUi,
    TResult Function(UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (initializeScreen != null) {
      return initializeScreen(this);
    }
    return orElse();
  }
}

abstract class InitializeScreen implements EditProfileScreenEvent {
  const factory InitializeScreen() = _$InitializeScreen;
}

/// @nodoc
abstract class _$$RefreshDobUiCopyWith<$Res> {
  factory _$$RefreshDobUiCopyWith(
          _$RefreshDobUi value, $Res Function(_$RefreshDobUi) then) =
      __$$RefreshDobUiCopyWithImpl<$Res>;
  @useResult
  $Res call({DateTime dob});
}

/// @nodoc
class __$$RefreshDobUiCopyWithImpl<$Res>
    extends _$EditProfileScreenEventCopyWithImpl<$Res, _$RefreshDobUi>
    implements _$$RefreshDobUiCopyWith<$Res> {
  __$$RefreshDobUiCopyWithImpl(
      _$RefreshDobUi _value, $Res Function(_$RefreshDobUi) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dob = null,
  }) {
    return _then(_$RefreshDobUi(
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc

class _$RefreshDobUi implements RefreshDobUi {
  const _$RefreshDobUi({required this.dob});

  @override
  final DateTime dob;

  @override
  String toString() {
    return 'EditProfileScreenEvent.refreshDobUi(dob: $dob)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RefreshDobUi &&
            (identical(other.dob, dob) || other.dob == dob));
  }

  @override
  int get hashCode => Object.hash(runtimeType, dob);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RefreshDobUiCopyWith<_$RefreshDobUi> get copyWith =>
      __$$RefreshDobUiCopyWithImpl<_$RefreshDobUi>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeScreen,
    required TResult Function(DateTime dob) refreshDobUi,
    required TResult Function(String firstName, String lastName,
            String username, DateTime dob, String location, String email)
        updateProfile,
  }) {
    return refreshDobUi(dob);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeScreen,
    TResult? Function(DateTime dob)? refreshDobUi,
    TResult? Function(String firstName, String lastName, String username,
            DateTime dob, String location, String email)?
        updateProfile,
  }) {
    return refreshDobUi?.call(dob);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeScreen,
    TResult Function(DateTime dob)? refreshDobUi,
    TResult Function(String firstName, String lastName, String username,
            DateTime dob, String location, String email)?
        updateProfile,
    required TResult orElse(),
  }) {
    if (refreshDobUi != null) {
      return refreshDobUi(dob);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeScreen value) initializeScreen,
    required TResult Function(RefreshDobUi value) refreshDobUi,
    required TResult Function(UpdateProfile value) updateProfile,
  }) {
    return refreshDobUi(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeScreen value)? initializeScreen,
    TResult? Function(RefreshDobUi value)? refreshDobUi,
    TResult? Function(UpdateProfile value)? updateProfile,
  }) {
    return refreshDobUi?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeScreen value)? initializeScreen,
    TResult Function(RefreshDobUi value)? refreshDobUi,
    TResult Function(UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (refreshDobUi != null) {
      return refreshDobUi(this);
    }
    return orElse();
  }
}

abstract class RefreshDobUi implements EditProfileScreenEvent {
  const factory RefreshDobUi({required final DateTime dob}) = _$RefreshDobUi;

  DateTime get dob;
  @JsonKey(ignore: true)
  _$$RefreshDobUiCopyWith<_$RefreshDobUi> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UpdateProfileCopyWith<$Res> {
  factory _$$UpdateProfileCopyWith(
          _$UpdateProfile value, $Res Function(_$UpdateProfile) then) =
      __$$UpdateProfileCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String firstName,
      String lastName,
      String username,
      DateTime dob,
      String location,
      String email});
}

/// @nodoc
class __$$UpdateProfileCopyWithImpl<$Res>
    extends _$EditProfileScreenEventCopyWithImpl<$Res, _$UpdateProfile>
    implements _$$UpdateProfileCopyWith<$Res> {
  __$$UpdateProfileCopyWithImpl(
      _$UpdateProfile _value, $Res Function(_$UpdateProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? dob = null,
    Object? location = null,
    Object? email = null,
  }) {
    return _then(_$UpdateProfile(
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
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$UpdateProfile implements UpdateProfile {
  const _$UpdateProfile(
      {required this.firstName,
      required this.lastName,
      required this.username,
      required this.dob,
      required this.location,
      required this.email});

  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String username;
  @override
  final DateTime dob;
  @override
  final String location;
  @override
  final String email;

  @override
  String toString() {
    return 'EditProfileScreenEvent.updateProfile(firstName: $firstName, lastName: $lastName, username: $username, dob: $dob, location: $location, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UpdateProfile &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, firstName, lastName, username, dob, location, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UpdateProfileCopyWith<_$UpdateProfile> get copyWith =>
      __$$UpdateProfileCopyWithImpl<_$UpdateProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initializeScreen,
    required TResult Function(DateTime dob) refreshDobUi,
    required TResult Function(String firstName, String lastName,
            String username, DateTime dob, String location, String email)
        updateProfile,
  }) {
    return updateProfile(firstName, lastName, username, dob, location, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initializeScreen,
    TResult? Function(DateTime dob)? refreshDobUi,
    TResult? Function(String firstName, String lastName, String username,
            DateTime dob, String location, String email)?
        updateProfile,
  }) {
    return updateProfile?.call(
        firstName, lastName, username, dob, location, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initializeScreen,
    TResult Function(DateTime dob)? refreshDobUi,
    TResult Function(String firstName, String lastName, String username,
            DateTime dob, String location, String email)?
        updateProfile,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(firstName, lastName, username, dob, location, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InitializeScreen value) initializeScreen,
    required TResult Function(RefreshDobUi value) refreshDobUi,
    required TResult Function(UpdateProfile value) updateProfile,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InitializeScreen value)? initializeScreen,
    TResult? Function(RefreshDobUi value)? refreshDobUi,
    TResult? Function(UpdateProfile value)? updateProfile,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InitializeScreen value)? initializeScreen,
    TResult Function(RefreshDobUi value)? refreshDobUi,
    TResult Function(UpdateProfile value)? updateProfile,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class UpdateProfile implements EditProfileScreenEvent {
  const factory UpdateProfile(
      {required final String firstName,
      required final String lastName,
      required final String username,
      required final DateTime dob,
      required final String location,
      required final String email}) = _$UpdateProfile;

  String get firstName;
  String get lastName;
  String get username;
  DateTime get dob;
  String get location;
  String get email;
  @JsonKey(ignore: true)
  _$$UpdateProfileCopyWith<_$UpdateProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$EditProfileScreenState {
  bool get isPageLoading => throw _privateConstructorUsedError;
  bool get isFrontendValidationSuccess => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool get isProfileUpdated => throw _privateConstructorUsedError;
  String get firstNameWarningText => throw _privateConstructorUsedError;
  String get lastNameWarningText => throw _privateConstructorUsedError;
  String get usernameWarningText => throw _privateConstructorUsedError;
  String get locationWarningText => throw _privateConstructorUsedError;
  String get emailWarningText => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get lastName => throw _privateConstructorUsedError;
  String get username => throw _privateConstructorUsedError;
  DateTime get dob => throw _privateConstructorUsedError;
  String get location => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  String? get dpImageUrl => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isPageLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isProfileUpdated,
            String firstNameWarningText,
            String lastNameWarningText,
            String usernameWarningText,
            String locationWarningText,
            String emailWarningText,
            String firstName,
            String lastName,
            String username,
            DateTime dob,
            String location,
            String email,
            String? dpImageUrl)
        currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isPageLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isProfileUpdated,
            String firstNameWarningText,
            String lastNameWarningText,
            String usernameWarningText,
            String locationWarningText,
            String emailWarningText,
            String firstName,
            String lastName,
            String username,
            DateTime dob,
            String location,
            String email,
            String? dpImageUrl)?
        currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isPageLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isProfileUpdated,
            String firstNameWarningText,
            String lastNameWarningText,
            String usernameWarningText,
            String locationWarningText,
            String emailWarningText,
            String firstName,
            String lastName,
            String username,
            DateTime dob,
            String location,
            String email,
            String? dpImageUrl)?
        currentState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentState value) currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentState value)? currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentState value)? currentState,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileScreenStateCopyWith<EditProfileScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileScreenStateCopyWith<$Res> {
  factory $EditProfileScreenStateCopyWith(EditProfileScreenState value,
          $Res Function(EditProfileScreenState) then) =
      _$EditProfileScreenStateCopyWithImpl<$Res, EditProfileScreenState>;
  @useResult
  $Res call(
      {bool isPageLoading,
      bool isFrontendValidationSuccess,
      String? errorMessage,
      bool isProfileUpdated,
      String firstNameWarningText,
      String lastNameWarningText,
      String usernameWarningText,
      String locationWarningText,
      String emailWarningText,
      String firstName,
      String lastName,
      String username,
      DateTime dob,
      String location,
      String email,
      String? dpImageUrl});
}

/// @nodoc
class _$EditProfileScreenStateCopyWithImpl<$Res,
        $Val extends EditProfileScreenState>
    implements $EditProfileScreenStateCopyWith<$Res> {
  _$EditProfileScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPageLoading = null,
    Object? isFrontendValidationSuccess = null,
    Object? errorMessage = freezed,
    Object? isProfileUpdated = null,
    Object? firstNameWarningText = null,
    Object? lastNameWarningText = null,
    Object? usernameWarningText = null,
    Object? locationWarningText = null,
    Object? emailWarningText = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? dob = null,
    Object? location = null,
    Object? email = null,
    Object? dpImageUrl = freezed,
  }) {
    return _then(_value.copyWith(
      isPageLoading: null == isPageLoading
          ? _value.isPageLoading
          : isPageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFrontendValidationSuccess: null == isFrontendValidationSuccess
          ? _value.isFrontendValidationSuccess
          : isFrontendValidationSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isProfileUpdated: null == isProfileUpdated
          ? _value.isProfileUpdated
          : isProfileUpdated // ignore: cast_nullable_to_non_nullable
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
      locationWarningText: null == locationWarningText
          ? _value.locationWarningText
          : locationWarningText // ignore: cast_nullable_to_non_nullable
              as String,
      emailWarningText: null == emailWarningText
          ? _value.emailWarningText
          : emailWarningText // ignore: cast_nullable_to_non_nullable
              as String,
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
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      dpImageUrl: freezed == dpImageUrl
          ? _value.dpImageUrl
          : dpImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CurrentStateCopyWith<$Res>
    implements $EditProfileScreenStateCopyWith<$Res> {
  factory _$$CurrentStateCopyWith(
          _$CurrentState value, $Res Function(_$CurrentState) then) =
      __$$CurrentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isPageLoading,
      bool isFrontendValidationSuccess,
      String? errorMessage,
      bool isProfileUpdated,
      String firstNameWarningText,
      String lastNameWarningText,
      String usernameWarningText,
      String locationWarningText,
      String emailWarningText,
      String firstName,
      String lastName,
      String username,
      DateTime dob,
      String location,
      String email,
      String? dpImageUrl});
}

/// @nodoc
class __$$CurrentStateCopyWithImpl<$Res>
    extends _$EditProfileScreenStateCopyWithImpl<$Res, _$CurrentState>
    implements _$$CurrentStateCopyWith<$Res> {
  __$$CurrentStateCopyWithImpl(
      _$CurrentState _value, $Res Function(_$CurrentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPageLoading = null,
    Object? isFrontendValidationSuccess = null,
    Object? errorMessage = freezed,
    Object? isProfileUpdated = null,
    Object? firstNameWarningText = null,
    Object? lastNameWarningText = null,
    Object? usernameWarningText = null,
    Object? locationWarningText = null,
    Object? emailWarningText = null,
    Object? firstName = null,
    Object? lastName = null,
    Object? username = null,
    Object? dob = null,
    Object? location = null,
    Object? email = null,
    Object? dpImageUrl = freezed,
  }) {
    return _then(_$CurrentState(
      isPageLoading: null == isPageLoading
          ? _value.isPageLoading
          : isPageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isFrontendValidationSuccess: null == isFrontendValidationSuccess
          ? _value.isFrontendValidationSuccess
          : isFrontendValidationSuccess // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isProfileUpdated: null == isProfileUpdated
          ? _value.isProfileUpdated
          : isProfileUpdated // ignore: cast_nullable_to_non_nullable
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
      locationWarningText: null == locationWarningText
          ? _value.locationWarningText
          : locationWarningText // ignore: cast_nullable_to_non_nullable
              as String,
      emailWarningText: null == emailWarningText
          ? _value.emailWarningText
          : emailWarningText // ignore: cast_nullable_to_non_nullable
              as String,
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
      dob: null == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as DateTime,
      location: null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      dpImageUrl: freezed == dpImageUrl
          ? _value.dpImageUrl
          : dpImageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CurrentState implements CurrentState {
  const _$CurrentState(
      {required this.isPageLoading,
      required this.isFrontendValidationSuccess,
      this.errorMessage,
      required this.isProfileUpdated,
      required this.firstNameWarningText,
      required this.lastNameWarningText,
      required this.usernameWarningText,
      required this.locationWarningText,
      required this.emailWarningText,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.dob,
      required this.location,
      required this.email,
      this.dpImageUrl});

  @override
  final bool isPageLoading;
  @override
  final bool isFrontendValidationSuccess;
  @override
  final String? errorMessage;
  @override
  final bool isProfileUpdated;
  @override
  final String firstNameWarningText;
  @override
  final String lastNameWarningText;
  @override
  final String usernameWarningText;
  @override
  final String locationWarningText;
  @override
  final String emailWarningText;
  @override
  final String firstName;
  @override
  final String lastName;
  @override
  final String username;
  @override
  final DateTime dob;
  @override
  final String location;
  @override
  final String email;
  @override
  final String? dpImageUrl;

  @override
  String toString() {
    return 'EditProfileScreenState.currentState(isPageLoading: $isPageLoading, isFrontendValidationSuccess: $isFrontendValidationSuccess, errorMessage: $errorMessage, isProfileUpdated: $isProfileUpdated, firstNameWarningText: $firstNameWarningText, lastNameWarningText: $lastNameWarningText, usernameWarningText: $usernameWarningText, locationWarningText: $locationWarningText, emailWarningText: $emailWarningText, firstName: $firstName, lastName: $lastName, username: $username, dob: $dob, location: $location, email: $email, dpImageUrl: $dpImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CurrentState &&
            (identical(other.isPageLoading, isPageLoading) ||
                other.isPageLoading == isPageLoading) &&
            (identical(other.isFrontendValidationSuccess,
                    isFrontendValidationSuccess) ||
                other.isFrontendValidationSuccess ==
                    isFrontendValidationSuccess) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isProfileUpdated, isProfileUpdated) ||
                other.isProfileUpdated == isProfileUpdated) &&
            (identical(other.firstNameWarningText, firstNameWarningText) ||
                other.firstNameWarningText == firstNameWarningText) &&
            (identical(other.lastNameWarningText, lastNameWarningText) ||
                other.lastNameWarningText == lastNameWarningText) &&
            (identical(other.usernameWarningText, usernameWarningText) ||
                other.usernameWarningText == usernameWarningText) &&
            (identical(other.locationWarningText, locationWarningText) ||
                other.locationWarningText == locationWarningText) &&
            (identical(other.emailWarningText, emailWarningText) ||
                other.emailWarningText == emailWarningText) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.location, location) ||
                other.location == location) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.dpImageUrl, dpImageUrl) ||
                other.dpImageUrl == dpImageUrl));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isPageLoading,
      isFrontendValidationSuccess,
      errorMessage,
      isProfileUpdated,
      firstNameWarningText,
      lastNameWarningText,
      usernameWarningText,
      locationWarningText,
      emailWarningText,
      firstName,
      lastName,
      username,
      dob,
      location,
      email,
      dpImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CurrentStateCopyWith<_$CurrentState> get copyWith =>
      __$$CurrentStateCopyWithImpl<_$CurrentState>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isPageLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isProfileUpdated,
            String firstNameWarningText,
            String lastNameWarningText,
            String usernameWarningText,
            String locationWarningText,
            String emailWarningText,
            String firstName,
            String lastName,
            String username,
            DateTime dob,
            String location,
            String email,
            String? dpImageUrl)
        currentState,
  }) {
    return currentState(
        isPageLoading,
        isFrontendValidationSuccess,
        errorMessage,
        isProfileUpdated,
        firstNameWarningText,
        lastNameWarningText,
        usernameWarningText,
        locationWarningText,
        emailWarningText,
        firstName,
        lastName,
        username,
        dob,
        location,
        email,
        dpImageUrl);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isPageLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isProfileUpdated,
            String firstNameWarningText,
            String lastNameWarningText,
            String usernameWarningText,
            String locationWarningText,
            String emailWarningText,
            String firstName,
            String lastName,
            String username,
            DateTime dob,
            String location,
            String email,
            String? dpImageUrl)?
        currentState,
  }) {
    return currentState?.call(
        isPageLoading,
        isFrontendValidationSuccess,
        errorMessage,
        isProfileUpdated,
        firstNameWarningText,
        lastNameWarningText,
        usernameWarningText,
        locationWarningText,
        emailWarningText,
        firstName,
        lastName,
        username,
        dob,
        location,
        email,
        dpImageUrl);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isPageLoading,
            bool isFrontendValidationSuccess,
            String? errorMessage,
            bool isProfileUpdated,
            String firstNameWarningText,
            String lastNameWarningText,
            String usernameWarningText,
            String locationWarningText,
            String emailWarningText,
            String firstName,
            String lastName,
            String username,
            DateTime dob,
            String location,
            String email,
            String? dpImageUrl)?
        currentState,
    required TResult orElse(),
  }) {
    if (currentState != null) {
      return currentState(
          isPageLoading,
          isFrontendValidationSuccess,
          errorMessage,
          isProfileUpdated,
          firstNameWarningText,
          lastNameWarningText,
          usernameWarningText,
          locationWarningText,
          emailWarningText,
          firstName,
          lastName,
          username,
          dob,
          location,
          email,
          dpImageUrl);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CurrentState value) currentState,
  }) {
    return currentState(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CurrentState value)? currentState,
  }) {
    return currentState?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CurrentState value)? currentState,
    required TResult orElse(),
  }) {
    if (currentState != null) {
      return currentState(this);
    }
    return orElse();
  }
}

abstract class CurrentState implements EditProfileScreenState {
  const factory CurrentState(
      {required final bool isPageLoading,
      required final bool isFrontendValidationSuccess,
      final String? errorMessage,
      required final bool isProfileUpdated,
      required final String firstNameWarningText,
      required final String lastNameWarningText,
      required final String usernameWarningText,
      required final String locationWarningText,
      required final String emailWarningText,
      required final String firstName,
      required final String lastName,
      required final String username,
      required final DateTime dob,
      required final String location,
      required final String email,
      final String? dpImageUrl}) = _$CurrentState;

  @override
  bool get isPageLoading;
  @override
  bool get isFrontendValidationSuccess;
  @override
  String? get errorMessage;
  @override
  bool get isProfileUpdated;
  @override
  String get firstNameWarningText;
  @override
  String get lastNameWarningText;
  @override
  String get usernameWarningText;
  @override
  String get locationWarningText;
  @override
  String get emailWarningText;
  @override
  String get firstName;
  @override
  String get lastName;
  @override
  String get username;
  @override
  DateTime get dob;
  @override
  String get location;
  @override
  String get email;
  @override
  String? get dpImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$CurrentStateCopyWith<_$CurrentState> get copyWith =>
      throw _privateConstructorUsedError;
}
