// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'branches_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BranchesEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(List<Branch> branches) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<Branch> branches)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<Branch> branches)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BranchesEventFetch value) fetch,
    required TResult Function(BranchesEventFetched value) fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchesEventFetch value)? fetch,
    TResult Function(BranchesEventFetched value)? fetched,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchesEventFetch value)? fetch,
    TResult Function(BranchesEventFetched value)? fetched,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchesEventCopyWith<$Res> {
  factory $BranchesEventCopyWith(
          BranchesEvent value, $Res Function(BranchesEvent) then) =
      _$BranchesEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BranchesEventCopyWithImpl<$Res>
    implements $BranchesEventCopyWith<$Res> {
  _$BranchesEventCopyWithImpl(this._value, this._then);

  final BranchesEvent _value;
  // ignore: unused_field
  final $Res Function(BranchesEvent) _then;
}

/// @nodoc
abstract class _$$BranchesEventFetchCopyWith<$Res> {
  factory _$$BranchesEventFetchCopyWith(_$BranchesEventFetch value,
          $Res Function(_$BranchesEventFetch) then) =
      __$$BranchesEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BranchesEventFetchCopyWithImpl<$Res>
    extends _$BranchesEventCopyWithImpl<$Res>
    implements _$$BranchesEventFetchCopyWith<$Res> {
  __$$BranchesEventFetchCopyWithImpl(
      _$BranchesEventFetch _value, $Res Function(_$BranchesEventFetch) _then)
      : super(_value, (v) => _then(v as _$BranchesEventFetch));

  @override
  _$BranchesEventFetch get _value => super._value as _$BranchesEventFetch;
}

/// @nodoc

class _$BranchesEventFetch implements BranchesEventFetch {
  const _$BranchesEventFetch();

  @override
  String toString() {
    return 'BranchesEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BranchesEventFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(List<Branch> branches) fetched,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<Branch> branches)? fetched,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<Branch> branches)? fetched,
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
    required TResult Function(BranchesEventFetch value) fetch,
    required TResult Function(BranchesEventFetched value) fetched,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchesEventFetch value)? fetch,
    TResult Function(BranchesEventFetched value)? fetched,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchesEventFetch value)? fetch,
    TResult Function(BranchesEventFetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class BranchesEventFetch implements BranchesEvent {
  const factory BranchesEventFetch() = _$BranchesEventFetch;
}

/// @nodoc
abstract class _$$BranchesEventFetchedCopyWith<$Res> {
  factory _$$BranchesEventFetchedCopyWith(_$BranchesEventFetched value,
          $Res Function(_$BranchesEventFetched) then) =
      __$$BranchesEventFetchedCopyWithImpl<$Res>;
  $Res call({List<Branch> branches});
}

/// @nodoc
class __$$BranchesEventFetchedCopyWithImpl<$Res>
    extends _$BranchesEventCopyWithImpl<$Res>
    implements _$$BranchesEventFetchedCopyWith<$Res> {
  __$$BranchesEventFetchedCopyWithImpl(_$BranchesEventFetched _value,
      $Res Function(_$BranchesEventFetched) _then)
      : super(_value, (v) => _then(v as _$BranchesEventFetched));

  @override
  _$BranchesEventFetched get _value => super._value as _$BranchesEventFetched;

  @override
  $Res call({
    Object? branches = freezed,
  }) {
    return _then(_$BranchesEventFetched(
      branches == freezed
          ? _value._branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<Branch>,
    ));
  }
}

/// @nodoc

class _$BranchesEventFetched implements BranchesEventFetched {
  const _$BranchesEventFetched(final List<Branch> branches)
      : _branches = branches;

  final List<Branch> _branches;
  @override
  List<Branch> get branches {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_branches);
  }

  @override
  String toString() {
    return 'BranchesEvent.fetched(branches: $branches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchesEventFetched &&
            const DeepCollectionEquality().equals(other._branches, _branches));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_branches));

  @JsonKey(ignore: true)
  @override
  _$$BranchesEventFetchedCopyWith<_$BranchesEventFetched> get copyWith =>
      __$$BranchesEventFetchedCopyWithImpl<_$BranchesEventFetched>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(List<Branch> branches) fetched,
  }) {
    return fetched(branches);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<Branch> branches)? fetched,
  }) {
    return fetched?.call(branches);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(List<Branch> branches)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(branches);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BranchesEventFetch value) fetch,
    required TResult Function(BranchesEventFetched value) fetched,
  }) {
    return fetched(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchesEventFetch value)? fetch,
    TResult Function(BranchesEventFetched value)? fetched,
  }) {
    return fetched?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchesEventFetch value)? fetch,
    TResult Function(BranchesEventFetched value)? fetched,
    required TResult orElse(),
  }) {
    if (fetched != null) {
      return fetched(this);
    }
    return orElse();
  }
}

abstract class BranchesEventFetched implements BranchesEvent {
  const factory BranchesEventFetched(final List<Branch> branches) =
      _$BranchesEventFetched;

  List<Branch> get branches;
  @JsonKey(ignore: true)
  _$$BranchesEventFetchedCopyWith<_$BranchesEventFetched> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$BranchesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Branch> branches) loaded,
    required TResult Function() failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Branch> branches)? loaded,
    TResult Function()? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Branch> branches)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BranchesStateInitial value) initial,
    required TResult Function(BranchesStateLoading value) loading,
    required TResult Function(BranchesStateLoaded value) loaded,
    required TResult Function(BranchesStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchesStateInitial value)? initial,
    TResult Function(BranchesStateLoading value)? loading,
    TResult Function(BranchesStateLoaded value)? loaded,
    TResult Function(BranchesStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchesStateInitial value)? initial,
    TResult Function(BranchesStateLoading value)? loading,
    TResult Function(BranchesStateLoaded value)? loaded,
    TResult Function(BranchesStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BranchesStateCopyWith<$Res> {
  factory $BranchesStateCopyWith(
          BranchesState value, $Res Function(BranchesState) then) =
      _$BranchesStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$BranchesStateCopyWithImpl<$Res>
    implements $BranchesStateCopyWith<$Res> {
  _$BranchesStateCopyWithImpl(this._value, this._then);

  final BranchesState _value;
  // ignore: unused_field
  final $Res Function(BranchesState) _then;
}

/// @nodoc
abstract class _$$BranchesStateInitialCopyWith<$Res> {
  factory _$$BranchesStateInitialCopyWith(_$BranchesStateInitial value,
          $Res Function(_$BranchesStateInitial) then) =
      __$$BranchesStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BranchesStateInitialCopyWithImpl<$Res>
    extends _$BranchesStateCopyWithImpl<$Res>
    implements _$$BranchesStateInitialCopyWith<$Res> {
  __$$BranchesStateInitialCopyWithImpl(_$BranchesStateInitial _value,
      $Res Function(_$BranchesStateInitial) _then)
      : super(_value, (v) => _then(v as _$BranchesStateInitial));

  @override
  _$BranchesStateInitial get _value => super._value as _$BranchesStateInitial;
}

/// @nodoc

class _$BranchesStateInitial implements BranchesStateInitial {
  const _$BranchesStateInitial();

  @override
  String toString() {
    return 'BranchesState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BranchesStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Branch> branches) loaded,
    required TResult Function() failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Branch> branches)? loaded,
    TResult Function()? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Branch> branches)? loaded,
    TResult Function()? failure,
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
    required TResult Function(BranchesStateInitial value) initial,
    required TResult Function(BranchesStateLoading value) loading,
    required TResult Function(BranchesStateLoaded value) loaded,
    required TResult Function(BranchesStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchesStateInitial value)? initial,
    TResult Function(BranchesStateLoading value)? loading,
    TResult Function(BranchesStateLoaded value)? loaded,
    TResult Function(BranchesStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchesStateInitial value)? initial,
    TResult Function(BranchesStateLoading value)? loading,
    TResult Function(BranchesStateLoaded value)? loaded,
    TResult Function(BranchesStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class BranchesStateInitial implements BranchesState {
  const factory BranchesStateInitial() = _$BranchesStateInitial;
}

/// @nodoc
abstract class _$$BranchesStateLoadingCopyWith<$Res> {
  factory _$$BranchesStateLoadingCopyWith(_$BranchesStateLoading value,
          $Res Function(_$BranchesStateLoading) then) =
      __$$BranchesStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BranchesStateLoadingCopyWithImpl<$Res>
    extends _$BranchesStateCopyWithImpl<$Res>
    implements _$$BranchesStateLoadingCopyWith<$Res> {
  __$$BranchesStateLoadingCopyWithImpl(_$BranchesStateLoading _value,
      $Res Function(_$BranchesStateLoading) _then)
      : super(_value, (v) => _then(v as _$BranchesStateLoading));

  @override
  _$BranchesStateLoading get _value => super._value as _$BranchesStateLoading;
}

/// @nodoc

class _$BranchesStateLoading implements BranchesStateLoading {
  const _$BranchesStateLoading();

  @override
  String toString() {
    return 'BranchesState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BranchesStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Branch> branches) loaded,
    required TResult Function() failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Branch> branches)? loaded,
    TResult Function()? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Branch> branches)? loaded,
    TResult Function()? failure,
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
    required TResult Function(BranchesStateInitial value) initial,
    required TResult Function(BranchesStateLoading value) loading,
    required TResult Function(BranchesStateLoaded value) loaded,
    required TResult Function(BranchesStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchesStateInitial value)? initial,
    TResult Function(BranchesStateLoading value)? loading,
    TResult Function(BranchesStateLoaded value)? loaded,
    TResult Function(BranchesStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchesStateInitial value)? initial,
    TResult Function(BranchesStateLoading value)? loading,
    TResult Function(BranchesStateLoaded value)? loaded,
    TResult Function(BranchesStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class BranchesStateLoading implements BranchesState {
  const factory BranchesStateLoading() = _$BranchesStateLoading;
}

/// @nodoc
abstract class _$$BranchesStateLoadedCopyWith<$Res> {
  factory _$$BranchesStateLoadedCopyWith(_$BranchesStateLoaded value,
          $Res Function(_$BranchesStateLoaded) then) =
      __$$BranchesStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Branch> branches});
}

/// @nodoc
class __$$BranchesStateLoadedCopyWithImpl<$Res>
    extends _$BranchesStateCopyWithImpl<$Res>
    implements _$$BranchesStateLoadedCopyWith<$Res> {
  __$$BranchesStateLoadedCopyWithImpl(
      _$BranchesStateLoaded _value, $Res Function(_$BranchesStateLoaded) _then)
      : super(_value, (v) => _then(v as _$BranchesStateLoaded));

  @override
  _$BranchesStateLoaded get _value => super._value as _$BranchesStateLoaded;

  @override
  $Res call({
    Object? branches = freezed,
  }) {
    return _then(_$BranchesStateLoaded(
      branches: branches == freezed
          ? _value._branches
          : branches // ignore: cast_nullable_to_non_nullable
              as List<Branch>,
    ));
  }
}

/// @nodoc

class _$BranchesStateLoaded implements BranchesStateLoaded {
  const _$BranchesStateLoaded({required final List<Branch> branches})
      : _branches = branches;

  final List<Branch> _branches;
  @override
  List<Branch> get branches {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_branches);
  }

  @override
  String toString() {
    return 'BranchesState.loaded(branches: $branches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BranchesStateLoaded &&
            const DeepCollectionEquality().equals(other._branches, _branches));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_branches));

  @JsonKey(ignore: true)
  @override
  _$$BranchesStateLoadedCopyWith<_$BranchesStateLoaded> get copyWith =>
      __$$BranchesStateLoadedCopyWithImpl<_$BranchesStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Branch> branches) loaded,
    required TResult Function() failure,
  }) {
    return loaded(branches);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Branch> branches)? loaded,
    TResult Function()? failure,
  }) {
    return loaded?.call(branches);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Branch> branches)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(branches);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BranchesStateInitial value) initial,
    required TResult Function(BranchesStateLoading value) loading,
    required TResult Function(BranchesStateLoaded value) loaded,
    required TResult Function(BranchesStateFailure value) failure,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchesStateInitial value)? initial,
    TResult Function(BranchesStateLoading value)? loading,
    TResult Function(BranchesStateLoaded value)? loaded,
    TResult Function(BranchesStateFailure value)? failure,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchesStateInitial value)? initial,
    TResult Function(BranchesStateLoading value)? loading,
    TResult Function(BranchesStateLoaded value)? loaded,
    TResult Function(BranchesStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class BranchesStateLoaded implements BranchesState {
  const factory BranchesStateLoaded({required final List<Branch> branches}) =
      _$BranchesStateLoaded;

  List<Branch> get branches;
  @JsonKey(ignore: true)
  _$$BranchesStateLoadedCopyWith<_$BranchesStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BranchesStateFailureCopyWith<$Res> {
  factory _$$BranchesStateFailureCopyWith(_$BranchesStateFailure value,
          $Res Function(_$BranchesStateFailure) then) =
      __$$BranchesStateFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BranchesStateFailureCopyWithImpl<$Res>
    extends _$BranchesStateCopyWithImpl<$Res>
    implements _$$BranchesStateFailureCopyWith<$Res> {
  __$$BranchesStateFailureCopyWithImpl(_$BranchesStateFailure _value,
      $Res Function(_$BranchesStateFailure) _then)
      : super(_value, (v) => _then(v as _$BranchesStateFailure));

  @override
  _$BranchesStateFailure get _value => super._value as _$BranchesStateFailure;
}

/// @nodoc

class _$BranchesStateFailure implements BranchesStateFailure {
  const _$BranchesStateFailure();

  @override
  String toString() {
    return 'BranchesState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BranchesStateFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<Branch> branches) loaded,
    required TResult Function() failure,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Branch> branches)? loaded,
    TResult Function()? failure,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<Branch> branches)? loaded,
    TResult Function()? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(BranchesStateInitial value) initial,
    required TResult Function(BranchesStateLoading value) loading,
    required TResult Function(BranchesStateLoaded value) loaded,
    required TResult Function(BranchesStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(BranchesStateInitial value)? initial,
    TResult Function(BranchesStateLoading value)? loading,
    TResult Function(BranchesStateLoaded value)? loaded,
    TResult Function(BranchesStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(BranchesStateInitial value)? initial,
    TResult Function(BranchesStateLoading value)? loading,
    TResult Function(BranchesStateLoaded value)? loaded,
    TResult Function(BranchesStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class BranchesStateFailure implements BranchesState {
  const factory BranchesStateFailure() = _$BranchesStateFailure;
}
