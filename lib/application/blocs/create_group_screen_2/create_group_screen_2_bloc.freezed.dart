// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_group_screen_2_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CreateGroupScreen_2Event {
  String? get groupName => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName) createGroup,
    required TResult Function(
            List<FriendsListResponseModel> selectedGroupMembersList,
            String? groupName)
        initializePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groupName)? createGroup,
    TResult? Function(List<FriendsListResponseModel> selectedGroupMembersList,
            String? groupName)?
        initializePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName)? createGroup,
    TResult Function(List<FriendsListResponseModel> selectedGroupMembersList,
            String? groupName)?
        initializePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_InitializePage value) initializePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_InitializePage value)? initializePage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_InitializePage value)? initializePage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateGroupScreen_2EventCopyWith<CreateGroupScreen_2Event> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGroupScreen_2EventCopyWith<$Res> {
  factory $CreateGroupScreen_2EventCopyWith(CreateGroupScreen_2Event value,
          $Res Function(CreateGroupScreen_2Event) then) =
      _$CreateGroupScreen_2EventCopyWithImpl<$Res, CreateGroupScreen_2Event>;
  @useResult
  $Res call({String groupName});
}

/// @nodoc
class _$CreateGroupScreen_2EventCopyWithImpl<$Res,
        $Val extends CreateGroupScreen_2Event>
    implements $CreateGroupScreen_2EventCopyWith<$Res> {
  _$CreateGroupScreen_2EventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = null,
  }) {
    return _then(_value.copyWith(
      groupName: null == groupName
          ? _value.groupName!
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreateGroupCopyWith<$Res>
    implements $CreateGroupScreen_2EventCopyWith<$Res> {
  factory _$$_CreateGroupCopyWith(
          _$_CreateGroup value, $Res Function(_$_CreateGroup) then) =
      __$$_CreateGroupCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String groupName});
}

/// @nodoc
class __$$_CreateGroupCopyWithImpl<$Res>
    extends _$CreateGroupScreen_2EventCopyWithImpl<$Res, _$_CreateGroup>
    implements _$$_CreateGroupCopyWith<$Res> {
  __$$_CreateGroupCopyWithImpl(
      _$_CreateGroup _value, $Res Function(_$_CreateGroup) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? groupName = null,
  }) {
    return _then(_$_CreateGroup(
      groupName: null == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateGroup implements _CreateGroup {
  const _$_CreateGroup({required this.groupName});

  @override
  final String groupName;

  @override
  String toString() {
    return 'CreateGroupScreen_2Event.createGroup(groupName: $groupName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateGroup &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, groupName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateGroupCopyWith<_$_CreateGroup> get copyWith =>
      __$$_CreateGroupCopyWithImpl<_$_CreateGroup>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName) createGroup,
    required TResult Function(
            List<FriendsListResponseModel> selectedGroupMembersList,
            String? groupName)
        initializePage,
  }) {
    return createGroup(groupName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groupName)? createGroup,
    TResult? Function(List<FriendsListResponseModel> selectedGroupMembersList,
            String? groupName)?
        initializePage,
  }) {
    return createGroup?.call(groupName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName)? createGroup,
    TResult Function(List<FriendsListResponseModel> selectedGroupMembersList,
            String? groupName)?
        initializePage,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(groupName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_InitializePage value) initializePage,
  }) {
    return createGroup(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_InitializePage value)? initializePage,
  }) {
    return createGroup?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_InitializePage value)? initializePage,
    required TResult orElse(),
  }) {
    if (createGroup != null) {
      return createGroup(this);
    }
    return orElse();
  }
}

abstract class _CreateGroup implements CreateGroupScreen_2Event {
  const factory _CreateGroup({required final String groupName}) =
      _$_CreateGroup;

  @override
  String get groupName;
  @override
  @JsonKey(ignore: true)
  _$$_CreateGroupCopyWith<_$_CreateGroup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_InitializePageCopyWith<$Res>
    implements $CreateGroupScreen_2EventCopyWith<$Res> {
  factory _$$_InitializePageCopyWith(
          _$_InitializePage value, $Res Function(_$_InitializePage) then) =
      __$$_InitializePageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<FriendsListResponseModel> selectedGroupMembersList,
      String? groupName});
}

/// @nodoc
class __$$_InitializePageCopyWithImpl<$Res>
    extends _$CreateGroupScreen_2EventCopyWithImpl<$Res, _$_InitializePage>
    implements _$$_InitializePageCopyWith<$Res> {
  __$$_InitializePageCopyWithImpl(
      _$_InitializePage _value, $Res Function(_$_InitializePage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedGroupMembersList = null,
    Object? groupName = freezed,
  }) {
    return _then(_$_InitializePage(
      selectedGroupMembersList: null == selectedGroupMembersList
          ? _value._selectedGroupMembersList
          : selectedGroupMembersList // ignore: cast_nullable_to_non_nullable
              as List<FriendsListResponseModel>,
      groupName: freezed == groupName
          ? _value.groupName
          : groupName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_InitializePage implements _InitializePage {
  const _$_InitializePage(
      {required final List<FriendsListResponseModel> selectedGroupMembersList,
      this.groupName})
      : _selectedGroupMembersList = selectedGroupMembersList;

  final List<FriendsListResponseModel> _selectedGroupMembersList;
  @override
  List<FriendsListResponseModel> get selectedGroupMembersList {
    if (_selectedGroupMembersList is EqualUnmodifiableListView)
      return _selectedGroupMembersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedGroupMembersList);
  }

  @override
  final String? groupName;

  @override
  String toString() {
    return 'CreateGroupScreen_2Event.initializePage(selectedGroupMembersList: $selectedGroupMembersList, groupName: $groupName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InitializePage &&
            const DeepCollectionEquality().equals(
                other._selectedGroupMembersList, _selectedGroupMembersList) &&
            (identical(other.groupName, groupName) ||
                other.groupName == groupName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_selectedGroupMembersList),
      groupName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitializePageCopyWith<_$_InitializePage> get copyWith =>
      __$$_InitializePageCopyWithImpl<_$_InitializePage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String groupName) createGroup,
    required TResult Function(
            List<FriendsListResponseModel> selectedGroupMembersList,
            String? groupName)
        initializePage,
  }) {
    return initializePage(selectedGroupMembersList, groupName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String groupName)? createGroup,
    TResult? Function(List<FriendsListResponseModel> selectedGroupMembersList,
            String? groupName)?
        initializePage,
  }) {
    return initializePage?.call(selectedGroupMembersList, groupName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String groupName)? createGroup,
    TResult Function(List<FriendsListResponseModel> selectedGroupMembersList,
            String? groupName)?
        initializePage,
    required TResult orElse(),
  }) {
    if (initializePage != null) {
      return initializePage(selectedGroupMembersList, groupName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CreateGroup value) createGroup,
    required TResult Function(_InitializePage value) initializePage,
  }) {
    return initializePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CreateGroup value)? createGroup,
    TResult? Function(_InitializePage value)? initializePage,
  }) {
    return initializePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CreateGroup value)? createGroup,
    TResult Function(_InitializePage value)? initializePage,
    required TResult orElse(),
  }) {
    if (initializePage != null) {
      return initializePage(this);
    }
    return orElse();
  }
}

abstract class _InitializePage implements CreateGroupScreen_2Event {
  const factory _InitializePage(
      {required final List<FriendsListResponseModel> selectedGroupMembersList,
      final String? groupName}) = _$_InitializePage;

  List<FriendsListResponseModel> get selectedGroupMembersList;
  @override
  String? get groupName;
  @override
  @JsonKey(ignore: true)
  _$$_InitializePageCopyWith<_$_InitializePage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CreateGroupScreen_2State {
  bool get isPageLoading => throw _privateConstructorUsedError;
  bool? get isGroupCreated => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  List<FriendsListResponseModel>? get selectedGroupMembersList =>
      throw _privateConstructorUsedError;
  CreateGroupConversationResponseModel? get createGroupConversationResponse =>
      throw _privateConstructorUsedError;
  CreateGroupConversationRequestModel? get createGroupConversationRequest =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool isPageLoading,
            bool? isGroupCreated,
            String? errorMessage,
            List<FriendsListResponseModel>? selectedGroupMembersList,
            CreateGroupConversationResponseModel?
                createGroupConversationResponse,
            CreateGroupConversationRequestModel? createGroupConversationRequest)
        currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isPageLoading,
            bool? isGroupCreated,
            String? errorMessage,
            List<FriendsListResponseModel>? selectedGroupMembersList,
            CreateGroupConversationResponseModel?
                createGroupConversationResponse,
            CreateGroupConversationRequestModel?
                createGroupConversationRequest)?
        currentState,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isPageLoading,
            bool? isGroupCreated,
            String? errorMessage,
            List<FriendsListResponseModel>? selectedGroupMembersList,
            CreateGroupConversationResponseModel?
                createGroupConversationResponse,
            CreateGroupConversationRequestModel?
                createGroupConversationRequest)?
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
  $CreateGroupScreen_2StateCopyWith<CreateGroupScreen_2State> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateGroupScreen_2StateCopyWith<$Res> {
  factory $CreateGroupScreen_2StateCopyWith(CreateGroupScreen_2State value,
          $Res Function(CreateGroupScreen_2State) then) =
      _$CreateGroupScreen_2StateCopyWithImpl<$Res, CreateGroupScreen_2State>;
  @useResult
  $Res call(
      {bool isPageLoading,
      bool? isGroupCreated,
      String? errorMessage,
      List<FriendsListResponseModel>? selectedGroupMembersList,
      CreateGroupConversationResponseModel? createGroupConversationResponse,
      CreateGroupConversationRequestModel? createGroupConversationRequest});
}

/// @nodoc
class _$CreateGroupScreen_2StateCopyWithImpl<$Res,
        $Val extends CreateGroupScreen_2State>
    implements $CreateGroupScreen_2StateCopyWith<$Res> {
  _$CreateGroupScreen_2StateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPageLoading = null,
    Object? isGroupCreated = freezed,
    Object? errorMessage = freezed,
    Object? selectedGroupMembersList = freezed,
    Object? createGroupConversationResponse = freezed,
    Object? createGroupConversationRequest = freezed,
  }) {
    return _then(_value.copyWith(
      isPageLoading: null == isPageLoading
          ? _value.isPageLoading
          : isPageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGroupCreated: freezed == isGroupCreated
          ? _value.isGroupCreated
          : isGroupCreated // ignore: cast_nullable_to_non_nullable
              as bool?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedGroupMembersList: freezed == selectedGroupMembersList
          ? _value.selectedGroupMembersList
          : selectedGroupMembersList // ignore: cast_nullable_to_non_nullable
              as List<FriendsListResponseModel>?,
      createGroupConversationResponse: freezed ==
              createGroupConversationResponse
          ? _value.createGroupConversationResponse
          : createGroupConversationResponse // ignore: cast_nullable_to_non_nullable
              as CreateGroupConversationResponseModel?,
      createGroupConversationRequest: freezed == createGroupConversationRequest
          ? _value.createGroupConversationRequest
          : createGroupConversationRequest // ignore: cast_nullable_to_non_nullable
              as CreateGroupConversationRequestModel?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrentStateCopyWith<$Res>
    implements $CreateGroupScreen_2StateCopyWith<$Res> {
  factory _$$_CurrentStateCopyWith(
          _$_CurrentState value, $Res Function(_$_CurrentState) then) =
      __$$_CurrentStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isPageLoading,
      bool? isGroupCreated,
      String? errorMessage,
      List<FriendsListResponseModel>? selectedGroupMembersList,
      CreateGroupConversationResponseModel? createGroupConversationResponse,
      CreateGroupConversationRequestModel? createGroupConversationRequest});
}

/// @nodoc
class __$$_CurrentStateCopyWithImpl<$Res>
    extends _$CreateGroupScreen_2StateCopyWithImpl<$Res, _$_CurrentState>
    implements _$$_CurrentStateCopyWith<$Res> {
  __$$_CurrentStateCopyWithImpl(
      _$_CurrentState _value, $Res Function(_$_CurrentState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isPageLoading = null,
    Object? isGroupCreated = freezed,
    Object? errorMessage = freezed,
    Object? selectedGroupMembersList = freezed,
    Object? createGroupConversationResponse = freezed,
    Object? createGroupConversationRequest = freezed,
  }) {
    return _then(_$_CurrentState(
      isPageLoading: null == isPageLoading
          ? _value.isPageLoading
          : isPageLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      isGroupCreated: freezed == isGroupCreated
          ? _value.isGroupCreated
          : isGroupCreated // ignore: cast_nullable_to_non_nullable
              as bool?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      selectedGroupMembersList: freezed == selectedGroupMembersList
          ? _value._selectedGroupMembersList
          : selectedGroupMembersList // ignore: cast_nullable_to_non_nullable
              as List<FriendsListResponseModel>?,
      createGroupConversationResponse: freezed ==
              createGroupConversationResponse
          ? _value.createGroupConversationResponse
          : createGroupConversationResponse // ignore: cast_nullable_to_non_nullable
              as CreateGroupConversationResponseModel?,
      createGroupConversationRequest: freezed == createGroupConversationRequest
          ? _value.createGroupConversationRequest
          : createGroupConversationRequest // ignore: cast_nullable_to_non_nullable
              as CreateGroupConversationRequestModel?,
    ));
  }
}

/// @nodoc

class _$_CurrentState implements _CurrentState {
  const _$_CurrentState(
      {required this.isPageLoading,
      this.isGroupCreated,
      this.errorMessage,
      final List<FriendsListResponseModel>? selectedGroupMembersList,
      this.createGroupConversationResponse,
      this.createGroupConversationRequest})
      : _selectedGroupMembersList = selectedGroupMembersList;

  @override
  final bool isPageLoading;
  @override
  final bool? isGroupCreated;
  @override
  final String? errorMessage;
  final List<FriendsListResponseModel>? _selectedGroupMembersList;
  @override
  List<FriendsListResponseModel>? get selectedGroupMembersList {
    final value = _selectedGroupMembersList;
    if (value == null) return null;
    if (_selectedGroupMembersList is EqualUnmodifiableListView)
      return _selectedGroupMembersList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final CreateGroupConversationResponseModel? createGroupConversationResponse;
  @override
  final CreateGroupConversationRequestModel? createGroupConversationRequest;

  @override
  String toString() {
    return 'CreateGroupScreen_2State.currentState(isPageLoading: $isPageLoading, isGroupCreated: $isGroupCreated, errorMessage: $errorMessage, selectedGroupMembersList: $selectedGroupMembersList, createGroupConversationResponse: $createGroupConversationResponse, createGroupConversationRequest: $createGroupConversationRequest)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentState &&
            (identical(other.isPageLoading, isPageLoading) ||
                other.isPageLoading == isPageLoading) &&
            (identical(other.isGroupCreated, isGroupCreated) ||
                other.isGroupCreated == isGroupCreated) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            const DeepCollectionEquality().equals(
                other._selectedGroupMembersList, _selectedGroupMembersList) &&
            (identical(other.createGroupConversationResponse,
                    createGroupConversationResponse) ||
                other.createGroupConversationResponse ==
                    createGroupConversationResponse) &&
            (identical(other.createGroupConversationRequest,
                    createGroupConversationRequest) ||
                other.createGroupConversationRequest ==
                    createGroupConversationRequest));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isPageLoading,
      isGroupCreated,
      errorMessage,
      const DeepCollectionEquality().hash(_selectedGroupMembersList),
      createGroupConversationResponse,
      createGroupConversationRequest);

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
            bool? isGroupCreated,
            String? errorMessage,
            List<FriendsListResponseModel>? selectedGroupMembersList,
            CreateGroupConversationResponseModel?
                createGroupConversationResponse,
            CreateGroupConversationRequestModel? createGroupConversationRequest)
        currentState,
  }) {
    return currentState(
        isPageLoading,
        isGroupCreated,
        errorMessage,
        selectedGroupMembersList,
        createGroupConversationResponse,
        createGroupConversationRequest);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            bool isPageLoading,
            bool? isGroupCreated,
            String? errorMessage,
            List<FriendsListResponseModel>? selectedGroupMembersList,
            CreateGroupConversationResponseModel?
                createGroupConversationResponse,
            CreateGroupConversationRequestModel?
                createGroupConversationRequest)?
        currentState,
  }) {
    return currentState?.call(
        isPageLoading,
        isGroupCreated,
        errorMessage,
        selectedGroupMembersList,
        createGroupConversationResponse,
        createGroupConversationRequest);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            bool isPageLoading,
            bool? isGroupCreated,
            String? errorMessage,
            List<FriendsListResponseModel>? selectedGroupMembersList,
            CreateGroupConversationResponseModel?
                createGroupConversationResponse,
            CreateGroupConversationRequestModel?
                createGroupConversationRequest)?
        currentState,
    required TResult orElse(),
  }) {
    if (currentState != null) {
      return currentState(
          isPageLoading,
          isGroupCreated,
          errorMessage,
          selectedGroupMembersList,
          createGroupConversationResponse,
          createGroupConversationRequest);
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

abstract class _CurrentState implements CreateGroupScreen_2State {
  const factory _CurrentState(
      {required final bool isPageLoading,
      final bool? isGroupCreated,
      final String? errorMessage,
      final List<FriendsListResponseModel>? selectedGroupMembersList,
      final CreateGroupConversationResponseModel?
          createGroupConversationResponse,
      final CreateGroupConversationRequestModel?
          createGroupConversationRequest}) = _$_CurrentState;

  @override
  bool get isPageLoading;
  @override
  bool? get isGroupCreated;
  @override
  String? get errorMessage;
  @override
  List<FriendsListResponseModel>? get selectedGroupMembersList;
  @override
  CreateGroupConversationResponseModel? get createGroupConversationResponse;
  @override
  CreateGroupConversationRequestModel? get createGroupConversationRequest;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentStateCopyWith<_$_CurrentState> get copyWith =>
      throw _privateConstructorUsedError;
}
