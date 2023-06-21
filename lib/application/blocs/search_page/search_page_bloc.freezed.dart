// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_page_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SearchPageEvent {
  String get searchKey => throw _privateConstructorUsedError;
  bool? get isIncludeOnlyFriendsOfFreinds => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String searchKey, bool? isIncludeOnlyFriendsOfFreinds)
        search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchKey, bool? isIncludeOnlyFriendsOfFreinds)?
        search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchKey, bool? isIncludeOnlyFriendsOfFreinds)?
        search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Search value) search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Search value)? search,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Search value)? search,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchPageEventCopyWith<SearchPageEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPageEventCopyWith<$Res> {
  factory $SearchPageEventCopyWith(
          SearchPageEvent value, $Res Function(SearchPageEvent) then) =
      _$SearchPageEventCopyWithImpl<$Res, SearchPageEvent>;
  @useResult
  $Res call({String searchKey, bool? isIncludeOnlyFriendsOfFreinds});
}

/// @nodoc
class _$SearchPageEventCopyWithImpl<$Res, $Val extends SearchPageEvent>
    implements $SearchPageEventCopyWith<$Res> {
  _$SearchPageEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchKey = null,
    Object? isIncludeOnlyFriendsOfFreinds = freezed,
  }) {
    return _then(_value.copyWith(
      searchKey: null == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String,
      isIncludeOnlyFriendsOfFreinds: freezed == isIncludeOnlyFriendsOfFreinds
          ? _value.isIncludeOnlyFriendsOfFreinds
          : isIncludeOnlyFriendsOfFreinds // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SearchCopyWith<$Res>
    implements $SearchPageEventCopyWith<$Res> {
  factory _$$SearchCopyWith(_$Search value, $Res Function(_$Search) then) =
      __$$SearchCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String searchKey, bool? isIncludeOnlyFriendsOfFreinds});
}

/// @nodoc
class __$$SearchCopyWithImpl<$Res>
    extends _$SearchPageEventCopyWithImpl<$Res, _$Search>
    implements _$$SearchCopyWith<$Res> {
  __$$SearchCopyWithImpl(_$Search _value, $Res Function(_$Search) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchKey = null,
    Object? isIncludeOnlyFriendsOfFreinds = freezed,
  }) {
    return _then(_$Search(
      searchKey: null == searchKey
          ? _value.searchKey
          : searchKey // ignore: cast_nullable_to_non_nullable
              as String,
      isIncludeOnlyFriendsOfFreinds: freezed == isIncludeOnlyFriendsOfFreinds
          ? _value.isIncludeOnlyFriendsOfFreinds
          : isIncludeOnlyFriendsOfFreinds // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$Search implements Search {
  const _$Search({required this.searchKey, this.isIncludeOnlyFriendsOfFreinds});

  @override
  final String searchKey;
  @override
  final bool? isIncludeOnlyFriendsOfFreinds;

  @override
  String toString() {
    return 'SearchPageEvent.search(searchKey: $searchKey, isIncludeOnlyFriendsOfFreinds: $isIncludeOnlyFriendsOfFreinds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Search &&
            (identical(other.searchKey, searchKey) ||
                other.searchKey == searchKey) &&
            (identical(other.isIncludeOnlyFriendsOfFreinds,
                    isIncludeOnlyFriendsOfFreinds) ||
                other.isIncludeOnlyFriendsOfFreinds ==
                    isIncludeOnlyFriendsOfFreinds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, searchKey, isIncludeOnlyFriendsOfFreinds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchCopyWith<_$Search> get copyWith =>
      __$$SearchCopyWithImpl<_$Search>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String searchKey, bool? isIncludeOnlyFriendsOfFreinds)
        search,
  }) {
    return search(searchKey, isIncludeOnlyFriendsOfFreinds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String searchKey, bool? isIncludeOnlyFriendsOfFreinds)?
        search,
  }) {
    return search?.call(searchKey, isIncludeOnlyFriendsOfFreinds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String searchKey, bool? isIncludeOnlyFriendsOfFreinds)?
        search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(searchKey, isIncludeOnlyFriendsOfFreinds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Search value) search,
  }) {
    return search(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Search value)? search,
  }) {
    return search?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Search value)? search,
    required TResult orElse(),
  }) {
    if (search != null) {
      return search(this);
    }
    return orElse();
  }
}

abstract class Search implements SearchPageEvent {
  const factory Search(
      {required final String searchKey,
      final bool? isIncludeOnlyFriendsOfFreinds}) = _$Search;

  @override
  String get searchKey;
  @override
  bool? get isIncludeOnlyFriendsOfFreinds;
  @override
  @JsonKey(ignore: true)
  _$$SearchCopyWith<_$Search> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SearchPageState {
  SearchUserResponseModel? get searchResultResponse =>
      throw _privateConstructorUsedError;
  bool get isSearchLoading => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  bool? get isIncludeOnlyFriendsOfFreinds => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SearchPageStateCopyWith<SearchPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SearchPageStateCopyWith<$Res> {
  factory $SearchPageStateCopyWith(
          SearchPageState value, $Res Function(SearchPageState) then) =
      _$SearchPageStateCopyWithImpl<$Res, SearchPageState>;
  @useResult
  $Res call(
      {SearchUserResponseModel? searchResultResponse,
      bool isSearchLoading,
      String? errorMessage,
      bool? isIncludeOnlyFriendsOfFreinds});
}

/// @nodoc
class _$SearchPageStateCopyWithImpl<$Res, $Val extends SearchPageState>
    implements $SearchPageStateCopyWith<$Res> {
  _$SearchPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResultResponse = freezed,
    Object? isSearchLoading = null,
    Object? errorMessage = freezed,
    Object? isIncludeOnlyFriendsOfFreinds = freezed,
  }) {
    return _then(_value.copyWith(
      searchResultResponse: freezed == searchResultResponse
          ? _value.searchResultResponse
          : searchResultResponse // ignore: cast_nullable_to_non_nullable
              as SearchUserResponseModel?,
      isSearchLoading: null == isSearchLoading
          ? _value.isSearchLoading
          : isSearchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isIncludeOnlyFriendsOfFreinds: freezed == isIncludeOnlyFriendsOfFreinds
          ? _value.isIncludeOnlyFriendsOfFreinds
          : isIncludeOnlyFriendsOfFreinds // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res>
    implements $SearchPageStateCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {SearchUserResponseModel? searchResultResponse,
      bool isSearchLoading,
      String? errorMessage,
      bool? isIncludeOnlyFriendsOfFreinds});
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$SearchPageStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? searchResultResponse = freezed,
    Object? isSearchLoading = null,
    Object? errorMessage = freezed,
    Object? isIncludeOnlyFriendsOfFreinds = freezed,
  }) {
    return _then(_$_Initial(
      searchResultResponse: freezed == searchResultResponse
          ? _value.searchResultResponse
          : searchResultResponse // ignore: cast_nullable_to_non_nullable
              as SearchUserResponseModel?,
      isSearchLoading: null == isSearchLoading
          ? _value.isSearchLoading
          : isSearchLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      isIncludeOnlyFriendsOfFreinds: freezed == isIncludeOnlyFriendsOfFreinds
          ? _value.isIncludeOnlyFriendsOfFreinds
          : isIncludeOnlyFriendsOfFreinds // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial(
      {this.searchResultResponse,
      required this.isSearchLoading,
      this.errorMessage,
      this.isIncludeOnlyFriendsOfFreinds});

  @override
  final SearchUserResponseModel? searchResultResponse;
  @override
  final bool isSearchLoading;
  @override
  final String? errorMessage;
  @override
  final bool? isIncludeOnlyFriendsOfFreinds;

  @override
  String toString() {
    return 'SearchPageState._initial(searchResultResponse: $searchResultResponse, isSearchLoading: $isSearchLoading, errorMessage: $errorMessage, isIncludeOnlyFriendsOfFreinds: $isIncludeOnlyFriendsOfFreinds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Initial &&
            (identical(other.searchResultResponse, searchResultResponse) ||
                other.searchResultResponse == searchResultResponse) &&
            (identical(other.isSearchLoading, isSearchLoading) ||
                other.isSearchLoading == isSearchLoading) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.isIncludeOnlyFriendsOfFreinds,
                    isIncludeOnlyFriendsOfFreinds) ||
                other.isIncludeOnlyFriendsOfFreinds ==
                    isIncludeOnlyFriendsOfFreinds));
  }

  @override
  int get hashCode => Object.hash(runtimeType, searchResultResponse,
      isSearchLoading, errorMessage, isIncludeOnlyFriendsOfFreinds);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      __$$_InitialCopyWithImpl<_$_Initial>(this, _$identity);
}

abstract class _Initial implements SearchPageState {
  const factory _Initial(
      {final SearchUserResponseModel? searchResultResponse,
      required final bool isSearchLoading,
      final String? errorMessage,
      final bool? isIncludeOnlyFriendsOfFreinds}) = _$_Initial;

  @override
  SearchUserResponseModel? get searchResultResponse;
  @override
  bool get isSearchLoading;
  @override
  String? get errorMessage;
  @override
  bool? get isIncludeOnlyFriendsOfFreinds;
  @override
  @JsonKey(ignore: true)
  _$$_InitialCopyWith<_$_Initial> get copyWith =>
      throw _privateConstructorUsedError;
}
