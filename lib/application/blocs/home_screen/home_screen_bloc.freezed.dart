// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_screen_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeScreenEvent {
  int get selectedBottomNavBarIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedBottomNavBarIndex)
        changeBottomNavBarIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedBottomNavBarIndex)? changeBottomNavBarIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedBottomNavBarIndex)? changeBottomNavBarIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBottomNavBarIndex value)
        changeBottomNavBarIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBottomNavBarIndex value)? changeBottomNavBarIndex,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBottomNavBarIndex value)? changeBottomNavBarIndex,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenEventCopyWith<HomeScreenEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenEventCopyWith<$Res> {
  factory $HomeScreenEventCopyWith(
          HomeScreenEvent value, $Res Function(HomeScreenEvent) then) =
      _$HomeScreenEventCopyWithImpl<$Res, HomeScreenEvent>;
  @useResult
  $Res call({int selectedBottomNavBarIndex});
}

/// @nodoc
class _$HomeScreenEventCopyWithImpl<$Res, $Val extends HomeScreenEvent>
    implements $HomeScreenEventCopyWith<$Res> {
  _$HomeScreenEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedBottomNavBarIndex = null,
  }) {
    return _then(_value.copyWith(
      selectedBottomNavBarIndex: null == selectedBottomNavBarIndex
          ? _value.selectedBottomNavBarIndex
          : selectedBottomNavBarIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChangeBottomNavBarIndexCopyWith<$Res>
    implements $HomeScreenEventCopyWith<$Res> {
  factory _$$ChangeBottomNavBarIndexCopyWith(_$ChangeBottomNavBarIndex value,
          $Res Function(_$ChangeBottomNavBarIndex) then) =
      __$$ChangeBottomNavBarIndexCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int selectedBottomNavBarIndex});
}

/// @nodoc
class __$$ChangeBottomNavBarIndexCopyWithImpl<$Res>
    extends _$HomeScreenEventCopyWithImpl<$Res, _$ChangeBottomNavBarIndex>
    implements _$$ChangeBottomNavBarIndexCopyWith<$Res> {
  __$$ChangeBottomNavBarIndexCopyWithImpl(_$ChangeBottomNavBarIndex _value,
      $Res Function(_$ChangeBottomNavBarIndex) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? selectedBottomNavBarIndex = null,
  }) {
    return _then(_$ChangeBottomNavBarIndex(
      selectedBottomNavBarIndex: null == selectedBottomNavBarIndex
          ? _value.selectedBottomNavBarIndex
          : selectedBottomNavBarIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangeBottomNavBarIndex implements ChangeBottomNavBarIndex {
  const _$ChangeBottomNavBarIndex({required this.selectedBottomNavBarIndex});

  @override
  final int selectedBottomNavBarIndex;

  @override
  String toString() {
    return 'HomeScreenEvent.changeBottomNavBarIndex(selectedBottomNavBarIndex: $selectedBottomNavBarIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeBottomNavBarIndex &&
            (identical(other.selectedBottomNavBarIndex,
                    selectedBottomNavBarIndex) ||
                other.selectedBottomNavBarIndex == selectedBottomNavBarIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, selectedBottomNavBarIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeBottomNavBarIndexCopyWith<_$ChangeBottomNavBarIndex> get copyWith =>
      __$$ChangeBottomNavBarIndexCopyWithImpl<_$ChangeBottomNavBarIndex>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int selectedBottomNavBarIndex)
        changeBottomNavBarIndex,
  }) {
    return changeBottomNavBarIndex(selectedBottomNavBarIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int selectedBottomNavBarIndex)? changeBottomNavBarIndex,
  }) {
    return changeBottomNavBarIndex?.call(selectedBottomNavBarIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int selectedBottomNavBarIndex)? changeBottomNavBarIndex,
    required TResult orElse(),
  }) {
    if (changeBottomNavBarIndex != null) {
      return changeBottomNavBarIndex(selectedBottomNavBarIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ChangeBottomNavBarIndex value)
        changeBottomNavBarIndex,
  }) {
    return changeBottomNavBarIndex(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ChangeBottomNavBarIndex value)? changeBottomNavBarIndex,
  }) {
    return changeBottomNavBarIndex?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ChangeBottomNavBarIndex value)? changeBottomNavBarIndex,
    required TResult orElse(),
  }) {
    if (changeBottomNavBarIndex != null) {
      return changeBottomNavBarIndex(this);
    }
    return orElse();
  }
}

abstract class ChangeBottomNavBarIndex implements HomeScreenEvent {
  const factory ChangeBottomNavBarIndex(
          {required final int selectedBottomNavBarIndex}) =
      _$ChangeBottomNavBarIndex;

  @override
  int get selectedBottomNavBarIndex;
  @override
  @JsonKey(ignore: true)
  _$$ChangeBottomNavBarIndexCopyWith<_$ChangeBottomNavBarIndex> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeScreenState {
  int get currentNavBarIndex => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeScreenStateCopyWith<HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeScreenStateCopyWith<$Res> {
  factory $HomeScreenStateCopyWith(
          HomeScreenState value, $Res Function(HomeScreenState) then) =
      _$HomeScreenStateCopyWithImpl<$Res, HomeScreenState>;
  @useResult
  $Res call({int currentNavBarIndex});
}

/// @nodoc
class _$HomeScreenStateCopyWithImpl<$Res, $Val extends HomeScreenState>
    implements $HomeScreenStateCopyWith<$Res> {
  _$HomeScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentNavBarIndex = null,
  }) {
    return _then(_value.copyWith(
      currentNavBarIndex: null == currentNavBarIndex
          ? _value.currentNavBarIndex
          : currentNavBarIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeScreenStateCopyWith<$Res>
    implements $HomeScreenStateCopyWith<$Res> {
  factory _$$_HomeScreenStateCopyWith(
          _$_HomeScreenState value, $Res Function(_$_HomeScreenState) then) =
      __$$_HomeScreenStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentNavBarIndex});
}

/// @nodoc
class __$$_HomeScreenStateCopyWithImpl<$Res>
    extends _$HomeScreenStateCopyWithImpl<$Res, _$_HomeScreenState>
    implements _$$_HomeScreenStateCopyWith<$Res> {
  __$$_HomeScreenStateCopyWithImpl(
      _$_HomeScreenState _value, $Res Function(_$_HomeScreenState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentNavBarIndex = null,
  }) {
    return _then(_$_HomeScreenState(
      currentNavBarIndex: null == currentNavBarIndex
          ? _value.currentNavBarIndex
          : currentNavBarIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_HomeScreenState implements _HomeScreenState {
  const _$_HomeScreenState({required this.currentNavBarIndex});

  @override
  final int currentNavBarIndex;

  @override
  String toString() {
    return 'HomeScreenState(currentNavBarIndex: $currentNavBarIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeScreenState &&
            (identical(other.currentNavBarIndex, currentNavBarIndex) ||
                other.currentNavBarIndex == currentNavBarIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentNavBarIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeScreenStateCopyWith<_$_HomeScreenState> get copyWith =>
      __$$_HomeScreenStateCopyWithImpl<_$_HomeScreenState>(this, _$identity);
}

abstract class _HomeScreenState implements HomeScreenState {
  const factory _HomeScreenState({required final int currentNavBarIndex}) =
      _$_HomeScreenState;

  @override
  int get currentNavBarIndex;
  @override
  @JsonKey(ignore: true)
  _$$_HomeScreenStateCopyWith<_$_HomeScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}
