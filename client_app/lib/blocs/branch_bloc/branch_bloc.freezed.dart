// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'branch_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BranchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(List<House> houses) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<House> houses)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<House> houses)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BranchEventFetch value) fetch,
    required TResult Function(BranchEventFetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchEventFetch value)? fetch,
    TResult Function(BranchEventFetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchEventFetch value)? fetch,
    TResult Function(BranchEventFetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchEventCopyWith<$Res> {
  factory $BranchEventCopyWith(
          BranchEvent value, $Res Function(BranchEvent) then) =
      _$BranchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BranchEventCopyWithImpl<$Res> implements $BranchEventCopyWith<$Res> {
  _$BranchEventCopyWithImpl(this._value, this._then);

  final BranchEvent _value;
  // ignore: unused_field
  final $Res Function(BranchEvent) _then;
}

/// @nodoc
abstract class _$$BranchEventFetchCopyWith<$Res> {
  factory _$$BranchEventFetchCopyWith(
          _$BranchEventFetch value, $Res Function(_$BranchEventFetch) then) =
      __$$BranchEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BranchEventFetchCopyWithImpl<$Res>
    extends _$BranchEventCopyWithImpl<$Res>
    implements _$$BranchEventFetchCopyWith<$Res> {
  __$$BranchEventFetchCopyWithImpl(
      _$BranchEventFetch _value, $Res Function(_$BranchEventFetch) _then)
      : super(_value, (v) => _then(v as _$BranchEventFetch));

  @override
  _$BranchEventFetch get _value => super._value as _$BranchEventFetch;
}

/// @nodoc

class _$BranchEventFetch implements BranchEventFetch {
  const _$BranchEventFetch();

  @override
  String toString() {
    return 'BranchEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BranchEventFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(List<House> houses) fetched,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<House> houses)? fetched,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<House> houses)? fetched,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BranchEventFetch value) fetch,
    required TResult Function(BranchEventFetched value) fetched,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchEventFetch value)? fetch,
    TResult Function(BranchEventFetched value)? fetched,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchEventFetch value)? fetch,
    TResult Function(BranchEventFetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class BranchEventFetch implements BranchEvent {
  const factory BranchEventFetch() = _$BranchEventFetch;
}

/// @nodoc
abstract class _$$BranchEventFetchedCopyWith<$Res> {
  factory _$$BranchEventFetchedCopyWith(_$BranchEventFetched value,
          $Res Function(_$BranchEventFetched) then) =
      __$$BranchEventFetchedCopyWithImpl<$Res>;
  $Res call({List<House> houses});
}

/// @nodoc
class __$$BranchEventFetchedCopyWithImpl<$Res>
    extends _$BranchEventCopyWithImpl<$Res>
    implements _$$BranchEventFetchedCopyWith<$Res> {
  __$$BranchEventFetchedCopyWithImpl(
      _$BranchEventFetched _value, $Res Function(_$BranchEventFetched) _then)
      : super(_value, (v) => _then(v as _$BranchEventFetched));

  @override
  _$BranchEventFetched get _value => super._value as _$BranchEventFetched;

  @override
  $Res call({
    Object? houses = freezed,
  }) {
    return _then(_$BranchEventFetched(
      houses == freezed
          ? _value._houses
          : houses // ignore: cast_nullable_to_non_nullable
              as List<House>,
    ));
  }
}

/// @nodoc

class _$BranchEventFetched implements BranchEventFetched {
  const _$BranchEventFetched(final List<House> houses) : _houses = houses;

  final List<House> _houses;
  @override
  List<House> get houses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_houses);
  }

  @override
  String toString() {
    return 'BranchEvent.fetched(houses: $houses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchEventFetched &&
            const DeepCollectionEquality().equals(other._houses, _houses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_houses));

  @JsonKey(ignore: true)
  @override
  _$$BranchEventFetchedCopyWith<_$BranchEventFetched> get copyWith =>
      __$$BranchEventFetchedCopyWithImpl<_$BranchEventFetched>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(List<House> houses) fetched,
  }) {
    return fetched(houses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<House> houses)? fetched,
  }) {
    return fetched?.call(houses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<House> houses)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(houses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BranchEventFetch value) fetch,
    required TResult Function(BranchEventFetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchEventFetch value)? fetch,
    TResult Function(BranchEventFetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchEventFetch value)? fetch,
    TResult Function(BranchEventFetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class BranchEventFetched implements BranchEvent {
  const factory BranchEventFetched(final List<House> houses) =
      _$BranchEventFetched;

  List<House> get houses;
  @JsonKey(ignore: true)
  _$$BranchEventFetchedCopyWith<_$BranchEventFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BranchState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<House> houses) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<House> houses)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<House> houses)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HogwartsBranchStateInitial value) initial,
    required TResult Function(HogwartsBranchStateLoading value) loading,
    required TResult Function(BranchStateLoaded value) loaded,
    required TResult Function(BranchStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HogwartsBranchStateInitial value)? initial,
    TResult Function(HogwartsBranchStateLoading value)? loading,
    TResult Function(BranchStateLoaded value)? loaded,
    TResult Function(BranchStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HogwartsBranchStateInitial value)? initial,
    TResult Function(HogwartsBranchStateLoading value)? loading,
    TResult Function(BranchStateLoaded value)? loaded,
    TResult Function(BranchStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchStateCopyWith<$Res> {
  factory $BranchStateCopyWith(
          BranchState value, $Res Function(BranchState) then) =
      _$BranchStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BranchStateCopyWithImpl<$Res> implements $BranchStateCopyWith<$Res> {
  _$BranchStateCopyWithImpl(this._value, this._then);

  final BranchState _value;
  // ignore: unused_field
  final $Res Function(BranchState) _then;
}

/// @nodoc
abstract class _$$HogwartsBranchStateInitialCopyWith<$Res> {
  factory _$$HogwartsBranchStateInitialCopyWith(
          _$HogwartsBranchStateInitial value,
          $Res Function(_$HogwartsBranchStateInitial) then) =
      __$$HogwartsBranchStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HogwartsBranchStateInitialCopyWithImpl<$Res>
    extends _$BranchStateCopyWithImpl<$Res>
    implements _$$HogwartsBranchStateInitialCopyWith<$Res> {
  __$$HogwartsBranchStateInitialCopyWithImpl(
      _$HogwartsBranchStateInitial _value,
      $Res Function(_$HogwartsBranchStateInitial) _then)
      : super(_value, (v) => _then(v as _$HogwartsBranchStateInitial));

  @override
  _$HogwartsBranchStateInitial get _value =>
      super._value as _$HogwartsBranchStateInitial;
}

/// @nodoc

class _$HogwartsBranchStateInitial implements HogwartsBranchStateInitial {
  const _$HogwartsBranchStateInitial();

  @override
  String toString() {
    return 'BranchState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HogwartsBranchStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<House> houses) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<House> houses)? loaded,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<House> houses)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HogwartsBranchStateInitial value) initial,
    required TResult Function(HogwartsBranchStateLoading value) loading,
    required TResult Function(BranchStateLoaded value) loaded,
    required TResult Function(BranchStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HogwartsBranchStateInitial value)? initial,
    TResult Function(HogwartsBranchStateLoading value)? loading,
    TResult Function(BranchStateLoaded value)? loaded,
    TResult Function(BranchStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HogwartsBranchStateInitial value)? initial,
    TResult Function(HogwartsBranchStateLoading value)? loading,
    TResult Function(BranchStateLoaded value)? loaded,
    TResult Function(BranchStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HogwartsBranchStateInitial implements BranchState {
  const factory HogwartsBranchStateInitial() = _$HogwartsBranchStateInitial;
}

/// @nodoc
abstract class _$$HogwartsBranchStateLoadingCopyWith<$Res> {
  factory _$$HogwartsBranchStateLoadingCopyWith(
          _$HogwartsBranchStateLoading value,
          $Res Function(_$HogwartsBranchStateLoading) then) =
      __$$HogwartsBranchStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HogwartsBranchStateLoadingCopyWithImpl<$Res>
    extends _$BranchStateCopyWithImpl<$Res>
    implements _$$HogwartsBranchStateLoadingCopyWith<$Res> {
  __$$HogwartsBranchStateLoadingCopyWithImpl(
      _$HogwartsBranchStateLoading _value,
      $Res Function(_$HogwartsBranchStateLoading) _then)
      : super(_value, (v) => _then(v as _$HogwartsBranchStateLoading));

  @override
  _$HogwartsBranchStateLoading get _value =>
      super._value as _$HogwartsBranchStateLoading;
}

/// @nodoc

class _$HogwartsBranchStateLoading implements HogwartsBranchStateLoading {
  const _$HogwartsBranchStateLoading();

  @override
  String toString() {
    return 'BranchState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HogwartsBranchStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<House> houses) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<House> houses)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<House> houses)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HogwartsBranchStateInitial value) initial,
    required TResult Function(HogwartsBranchStateLoading value) loading,
    required TResult Function(BranchStateLoaded value) loaded,
    required TResult Function(BranchStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HogwartsBranchStateInitial value)? initial,
    TResult Function(HogwartsBranchStateLoading value)? loading,
    TResult Function(BranchStateLoaded value)? loaded,
    TResult Function(BranchStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HogwartsBranchStateInitial value)? initial,
    TResult Function(HogwartsBranchStateLoading value)? loading,
    TResult Function(BranchStateLoaded value)? loaded,
    TResult Function(BranchStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HogwartsBranchStateLoading implements BranchState {
  const factory HogwartsBranchStateLoading() = _$HogwartsBranchStateLoading;
}

/// @nodoc
abstract class _$$BranchStateLoadedCopyWith<$Res> {
  factory _$$BranchStateLoadedCopyWith(
          _$BranchStateLoaded value, $Res Function(_$BranchStateLoaded) then) =
      __$$BranchStateLoadedCopyWithImpl<$Res>;
  $Res call({List<House> houses});
}

/// @nodoc
class __$$BranchStateLoadedCopyWithImpl<$Res>
    extends _$BranchStateCopyWithImpl<$Res>
    implements _$$BranchStateLoadedCopyWith<$Res> {
  __$$BranchStateLoadedCopyWithImpl(
      _$BranchStateLoaded _value, $Res Function(_$BranchStateLoaded) _then)
      : super(_value, (v) => _then(v as _$BranchStateLoaded));

  @override
  _$BranchStateLoaded get _value => super._value as _$BranchStateLoaded;

  @override
  $Res call({
    Object? houses = freezed,
  }) {
    return _then(_$BranchStateLoaded(
      houses: houses == freezed
          ? _value._houses
          : houses // ignore: cast_nullable_to_non_nullable
              as List<House>,
    ));
  }
}

/// @nodoc

class _$BranchStateLoaded implements BranchStateLoaded {
  const _$BranchStateLoaded({required final List<House> houses})
      : _houses = houses;

  final List<House> _houses;
  @override
  List<House> get houses {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_houses);
  }

  @override
  String toString() {
    return 'BranchState.loaded(houses: $houses)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchStateLoaded &&
            const DeepCollectionEquality().equals(other._houses, _houses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_houses));

  @JsonKey(ignore: true)
  @override
  _$$BranchStateLoadedCopyWith<_$BranchStateLoaded> get copyWith =>
      __$$BranchStateLoadedCopyWithImpl<_$BranchStateLoaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<House> houses) loaded,
    required TResult Function() error,
  }) {
    return loaded(houses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<House> houses)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(houses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<House> houses)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(houses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HogwartsBranchStateInitial value) initial,
    required TResult Function(HogwartsBranchStateLoading value) loading,
    required TResult Function(BranchStateLoaded value) loaded,
    required TResult Function(BranchStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HogwartsBranchStateInitial value)? initial,
    TResult Function(HogwartsBranchStateLoading value)? loading,
    TResult Function(BranchStateLoaded value)? loaded,
    TResult Function(BranchStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HogwartsBranchStateInitial value)? initial,
    TResult Function(HogwartsBranchStateLoading value)? loading,
    TResult Function(BranchStateLoaded value)? loaded,
    TResult Function(BranchStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BranchStateLoaded implements BranchState {
  const factory BranchStateLoaded({required final List<House> houses}) =
      _$BranchStateLoaded;

  List<House> get houses;
  @JsonKey(ignore: true)
  _$$BranchStateLoadedCopyWith<_$BranchStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BranchStateErrorCopyWith<$Res> {
  factory _$$BranchStateErrorCopyWith(
          _$BranchStateError value, $Res Function(_$BranchStateError) then) =
      __$$BranchStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BranchStateErrorCopyWithImpl<$Res>
    extends _$BranchStateCopyWithImpl<$Res>
    implements _$$BranchStateErrorCopyWith<$Res> {
  __$$BranchStateErrorCopyWithImpl(
      _$BranchStateError _value, $Res Function(_$BranchStateError) _then)
      : super(_value, (v) => _then(v as _$BranchStateError));

  @override
  _$BranchStateError get _value => super._value as _$BranchStateError;
}

/// @nodoc

class _$BranchStateError implements BranchStateError {
  const _$BranchStateError();

  @override
  String toString() {
    return 'BranchState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BranchStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<House> houses) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<House> houses)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<House> houses)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HogwartsBranchStateInitial value) initial,
    required TResult Function(HogwartsBranchStateLoading value) loading,
    required TResult Function(BranchStateLoaded value) loaded,
    required TResult Function(BranchStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HogwartsBranchStateInitial value)? initial,
    TResult Function(HogwartsBranchStateLoading value)? loading,
    TResult Function(BranchStateLoaded value)? loaded,
    TResult Function(BranchStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HogwartsBranchStateInitial value)? initial,
    TResult Function(HogwartsBranchStateLoading value)? loading,
    TResult Function(BranchStateLoaded value)? loaded,
    TResult Function(BranchStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class BranchStateError implements BranchState {
  const factory BranchStateError() = _$BranchStateError;
}
