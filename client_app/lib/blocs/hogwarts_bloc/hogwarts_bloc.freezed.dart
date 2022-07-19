// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hogwarts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HogwartsEvent {
  int get id => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HogwartsEventFetch value) fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HogwartsEventFetch value)? fetch,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HogwartsEventFetch value)? fetch,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HogwartsEventCopyWith<HogwartsEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HogwartsEventCopyWith<$Res> {
  factory $HogwartsEventCopyWith(
          HogwartsEvent value, $Res Function(HogwartsEvent) then) =
      _$HogwartsEventCopyWithImpl<$Res>;
  $Res call({int id});
}

/// @nodoc
class _$HogwartsEventCopyWithImpl<$Res>
    implements $HogwartsEventCopyWith<$Res> {
  _$HogwartsEventCopyWithImpl(this._value, this._then);

  final HogwartsEvent _value;
  // ignore: unused_field
  final $Res Function(HogwartsEvent) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$HogwartsEventFetchCopyWith<$Res>
    implements $HogwartsEventCopyWith<$Res> {
  factory _$$HogwartsEventFetchCopyWith(_$HogwartsEventFetch value,
          $Res Function(_$HogwartsEventFetch) then) =
      __$$HogwartsEventFetchCopyWithImpl<$Res>;
  @override
  $Res call({int id});
}

/// @nodoc
class __$$HogwartsEventFetchCopyWithImpl<$Res>
    extends _$HogwartsEventCopyWithImpl<$Res>
    implements _$$HogwartsEventFetchCopyWith<$Res> {
  __$$HogwartsEventFetchCopyWithImpl(
      _$HogwartsEventFetch _value, $Res Function(_$HogwartsEventFetch) _then)
      : super(_value, (v) => _then(v as _$HogwartsEventFetch));

  @override
  _$HogwartsEventFetch get _value => super._value as _$HogwartsEventFetch;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_$HogwartsEventFetch(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HogwartsEventFetch implements HogwartsEventFetch {
  const _$HogwartsEventFetch({required this.id});

  @override
  final int id;

  @override
  String toString() {
    return 'HogwartsEvent.fetch(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HogwartsEventFetch &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$$HogwartsEventFetchCopyWith<_$HogwartsEventFetch> get copyWith =>
      __$$HogwartsEventFetchCopyWithImpl<_$HogwartsEventFetch>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int id) fetch,
  }) {
    return fetch(id);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int id)? fetch,
  }) {
    return fetch?.call(id);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int id)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(id);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HogwartsEventFetch value) fetch,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HogwartsEventFetch value)? fetch,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HogwartsEventFetch value)? fetch,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class HogwartsEventFetch implements HogwartsEvent {
  const factory HogwartsEventFetch({required final int id}) =
      _$HogwartsEventFetch;

  @override
  int get id;
  @override
  @JsonKey(ignore: true)
  _$$HogwartsEventFetchCopyWith<_$HogwartsEventFetch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HogwartsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HogwartsBranch branch) loaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HogwartsBranch branch)? loaded,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HogwartsBranch branch)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HogwartsStateInitial value) initial,
    required TResult Function(HogwartsStateLoading value) loading,
    required TResult Function(HogwartsStateLoaded value) loaded,
    required TResult Function(HogwartsStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HogwartsStateInitial value)? initial,
    TResult Function(HogwartsStateLoading value)? loading,
    TResult Function(HogwartsStateLoaded value)? loaded,
    TResult Function(HogwartsStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HogwartsStateInitial value)? initial,
    TResult Function(HogwartsStateLoading value)? loading,
    TResult Function(HogwartsStateLoaded value)? loaded,
    TResult Function(HogwartsStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HogwartsStateCopyWith<$Res> {
  factory $HogwartsStateCopyWith(
          HogwartsState value, $Res Function(HogwartsState) then) =
      _$HogwartsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HogwartsStateCopyWithImpl<$Res>
    implements $HogwartsStateCopyWith<$Res> {
  _$HogwartsStateCopyWithImpl(this._value, this._then);

  final HogwartsState _value;
  // ignore: unused_field
  final $Res Function(HogwartsState) _then;
}

/// @nodoc
abstract class _$$HogwartsStateInitialCopyWith<$Res> {
  factory _$$HogwartsStateInitialCopyWith(_$HogwartsStateInitial value,
          $Res Function(_$HogwartsStateInitial) then) =
      __$$HogwartsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HogwartsStateInitialCopyWithImpl<$Res>
    extends _$HogwartsStateCopyWithImpl<$Res>
    implements _$$HogwartsStateInitialCopyWith<$Res> {
  __$$HogwartsStateInitialCopyWithImpl(_$HogwartsStateInitial _value,
      $Res Function(_$HogwartsStateInitial) _then)
      : super(_value, (v) => _then(v as _$HogwartsStateInitial));

  @override
  _$HogwartsStateInitial get _value => super._value as _$HogwartsStateInitial;
}

/// @nodoc

class _$HogwartsStateInitial implements HogwartsStateInitial {
  const _$HogwartsStateInitial();

  @override
  String toString() {
    return 'HogwartsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HogwartsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HogwartsBranch branch) loaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HogwartsBranch branch)? loaded,
    TResult Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HogwartsBranch branch)? loaded,
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
    required TResult Function(HogwartsStateInitial value) initial,
    required TResult Function(HogwartsStateLoading value) loading,
    required TResult Function(HogwartsStateLoaded value) loaded,
    required TResult Function(HogwartsStateError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HogwartsStateInitial value)? initial,
    TResult Function(HogwartsStateLoading value)? loading,
    TResult Function(HogwartsStateLoaded value)? loaded,
    TResult Function(HogwartsStateError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HogwartsStateInitial value)? initial,
    TResult Function(HogwartsStateLoading value)? loading,
    TResult Function(HogwartsStateLoaded value)? loaded,
    TResult Function(HogwartsStateError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HogwartsStateInitial implements HogwartsState {
  const factory HogwartsStateInitial() = _$HogwartsStateInitial;
}

/// @nodoc
abstract class _$$HogwartsStateLoadingCopyWith<$Res> {
  factory _$$HogwartsStateLoadingCopyWith(_$HogwartsStateLoading value,
          $Res Function(_$HogwartsStateLoading) then) =
      __$$HogwartsStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HogwartsStateLoadingCopyWithImpl<$Res>
    extends _$HogwartsStateCopyWithImpl<$Res>
    implements _$$HogwartsStateLoadingCopyWith<$Res> {
  __$$HogwartsStateLoadingCopyWithImpl(_$HogwartsStateLoading _value,
      $Res Function(_$HogwartsStateLoading) _then)
      : super(_value, (v) => _then(v as _$HogwartsStateLoading));

  @override
  _$HogwartsStateLoading get _value => super._value as _$HogwartsStateLoading;
}

/// @nodoc

class _$HogwartsStateLoading implements HogwartsStateLoading {
  const _$HogwartsStateLoading();

  @override
  String toString() {
    return 'HogwartsState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HogwartsStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HogwartsBranch branch) loaded,
    required TResult Function() error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HogwartsBranch branch)? loaded,
    TResult Function()? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HogwartsBranch branch)? loaded,
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
    required TResult Function(HogwartsStateInitial value) initial,
    required TResult Function(HogwartsStateLoading value) loading,
    required TResult Function(HogwartsStateLoaded value) loaded,
    required TResult Function(HogwartsStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HogwartsStateInitial value)? initial,
    TResult Function(HogwartsStateLoading value)? loading,
    TResult Function(HogwartsStateLoaded value)? loaded,
    TResult Function(HogwartsStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HogwartsStateInitial value)? initial,
    TResult Function(HogwartsStateLoading value)? loading,
    TResult Function(HogwartsStateLoaded value)? loaded,
    TResult Function(HogwartsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HogwartsStateLoading implements HogwartsState {
  const factory HogwartsStateLoading() = _$HogwartsStateLoading;
}

/// @nodoc
abstract class _$$HogwartsStateLoadedCopyWith<$Res> {
  factory _$$HogwartsStateLoadedCopyWith(_$HogwartsStateLoaded value,
          $Res Function(_$HogwartsStateLoaded) then) =
      __$$HogwartsStateLoadedCopyWithImpl<$Res>;
  $Res call({HogwartsBranch branch});

  $HogwartsBranchCopyWith<$Res> get branch;
}

/// @nodoc
class __$$HogwartsStateLoadedCopyWithImpl<$Res>
    extends _$HogwartsStateCopyWithImpl<$Res>
    implements _$$HogwartsStateLoadedCopyWith<$Res> {
  __$$HogwartsStateLoadedCopyWithImpl(
      _$HogwartsStateLoaded _value, $Res Function(_$HogwartsStateLoaded) _then)
      : super(_value, (v) => _then(v as _$HogwartsStateLoaded));

  @override
  _$HogwartsStateLoaded get _value => super._value as _$HogwartsStateLoaded;

  @override
  $Res call({
    Object? branch = freezed,
  }) {
    return _then(_$HogwartsStateLoaded(
      branch: branch == freezed
          ? _value.branch
          : branch // ignore: cast_nullable_to_non_nullable
              as HogwartsBranch,
    ));
  }

  @override
  $HogwartsBranchCopyWith<$Res> get branch {
    return $HogwartsBranchCopyWith<$Res>(_value.branch, (value) {
      return _then(_value.copyWith(branch: value));
    });
  }
}

/// @nodoc

class _$HogwartsStateLoaded implements HogwartsStateLoaded {
  const _$HogwartsStateLoaded({required this.branch});

  @override
  final HogwartsBranch branch;

  @override
  String toString() {
    return 'HogwartsState.loaded(branch: $branch)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HogwartsStateLoaded &&
            const DeepCollectionEquality().equals(other.branch, branch));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(branch));

  @JsonKey(ignore: true)
  @override
  _$$HogwartsStateLoadedCopyWith<_$HogwartsStateLoaded> get copyWith =>
      __$$HogwartsStateLoadedCopyWithImpl<_$HogwartsStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HogwartsBranch branch) loaded,
    required TResult Function() error,
  }) {
    return loaded(branch);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HogwartsBranch branch)? loaded,
    TResult Function()? error,
  }) {
    return loaded?.call(branch);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HogwartsBranch branch)? loaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(branch);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HogwartsStateInitial value) initial,
    required TResult Function(HogwartsStateLoading value) loading,
    required TResult Function(HogwartsStateLoaded value) loaded,
    required TResult Function(HogwartsStateError value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HogwartsStateInitial value)? initial,
    TResult Function(HogwartsStateLoading value)? loading,
    TResult Function(HogwartsStateLoaded value)? loaded,
    TResult Function(HogwartsStateError value)? error,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HogwartsStateInitial value)? initial,
    TResult Function(HogwartsStateLoading value)? loading,
    TResult Function(HogwartsStateLoaded value)? loaded,
    TResult Function(HogwartsStateError value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class HogwartsStateLoaded implements HogwartsState {
  const factory HogwartsStateLoaded({required final HogwartsBranch branch}) =
      _$HogwartsStateLoaded;

  HogwartsBranch get branch;
  @JsonKey(ignore: true)
  _$$HogwartsStateLoadedCopyWith<_$HogwartsStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HogwartsStateErrorCopyWith<$Res> {
  factory _$$HogwartsStateErrorCopyWith(_$HogwartsStateError value,
          $Res Function(_$HogwartsStateError) then) =
      __$$HogwartsStateErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HogwartsStateErrorCopyWithImpl<$Res>
    extends _$HogwartsStateCopyWithImpl<$Res>
    implements _$$HogwartsStateErrorCopyWith<$Res> {
  __$$HogwartsStateErrorCopyWithImpl(
      _$HogwartsStateError _value, $Res Function(_$HogwartsStateError) _then)
      : super(_value, (v) => _then(v as _$HogwartsStateError));

  @override
  _$HogwartsStateError get _value => super._value as _$HogwartsStateError;
}

/// @nodoc

class _$HogwartsStateError implements HogwartsStateError {
  const _$HogwartsStateError();

  @override
  String toString() {
    return 'HogwartsState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HogwartsStateError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(HogwartsBranch branch) loaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HogwartsBranch branch)? loaded,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(HogwartsBranch branch)? loaded,
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
    required TResult Function(HogwartsStateInitial value) initial,
    required TResult Function(HogwartsStateLoading value) loading,
    required TResult Function(HogwartsStateLoaded value) loaded,
    required TResult Function(HogwartsStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HogwartsStateInitial value)? initial,
    TResult Function(HogwartsStateLoading value)? loading,
    TResult Function(HogwartsStateLoaded value)? loaded,
    TResult Function(HogwartsStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HogwartsStateInitial value)? initial,
    TResult Function(HogwartsStateLoading value)? loading,
    TResult Function(HogwartsStateLoaded value)? loaded,
    TResult Function(HogwartsStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class HogwartsStateError implements HogwartsState {
  const factory HogwartsStateError() = _$HogwartsStateError;
}
