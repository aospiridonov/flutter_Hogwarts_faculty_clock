// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connections_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Connection connection) append,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Connection connection)? append,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Connection connection)? append,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionsEventFetch value) fetch,
    required TResult Function(ConnectionsEventAppend value) append,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectionsEventFetch value)? fetch,
    TResult Function(ConnectionsEventAppend value)? append,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionsEventFetch value)? fetch,
    TResult Function(ConnectionsEventAppend value)? append,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionsEventCopyWith<$Res> {
  factory $ConnectionsEventCopyWith(
          ConnectionsEvent value, $Res Function(ConnectionsEvent) then) =
      _$ConnectionsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionsEventCopyWithImpl<$Res>
    implements $ConnectionsEventCopyWith<$Res> {
  _$ConnectionsEventCopyWithImpl(this._value, this._then);

  final ConnectionsEvent _value;
  // ignore: unused_field
  final $Res Function(ConnectionsEvent) _then;
}

/// @nodoc
abstract class _$$ConnectionsEventFetchCopyWith<$Res> {
  factory _$$ConnectionsEventFetchCopyWith(_$ConnectionsEventFetch value,
          $Res Function(_$ConnectionsEventFetch) then) =
      __$$ConnectionsEventFetchCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectionsEventFetchCopyWithImpl<$Res>
    extends _$ConnectionsEventCopyWithImpl<$Res>
    implements _$$ConnectionsEventFetchCopyWith<$Res> {
  __$$ConnectionsEventFetchCopyWithImpl(_$ConnectionsEventFetch _value,
      $Res Function(_$ConnectionsEventFetch) _then)
      : super(_value, (v) => _then(v as _$ConnectionsEventFetch));

  @override
  _$ConnectionsEventFetch get _value => super._value as _$ConnectionsEventFetch;
}

/// @nodoc

class _$ConnectionsEventFetch implements ConnectionsEventFetch {
  const _$ConnectionsEventFetch();

  @override
  String toString() {
    return 'ConnectionsEvent.fetch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ConnectionsEventFetch);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Connection connection) append,
  }) {
    return fetch();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Connection connection)? append,
  }) {
    return fetch?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Connection connection)? append,
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
    required TResult Function(ConnectionsEventFetch value) fetch,
    required TResult Function(ConnectionsEventAppend value) append,
  }) {
    return fetch(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectionsEventFetch value)? fetch,
    TResult Function(ConnectionsEventAppend value)? append,
  }) {
    return fetch?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionsEventFetch value)? fetch,
    TResult Function(ConnectionsEventAppend value)? append,
    required TResult orElse(),
  }) {
    if (fetch != null) {
      return fetch(this);
    }
    return orElse();
  }
}

abstract class ConnectionsEventFetch implements ConnectionsEvent {
  const factory ConnectionsEventFetch() = _$ConnectionsEventFetch;
}

/// @nodoc
abstract class _$$ConnectionsEventAppendCopyWith<$Res> {
  factory _$$ConnectionsEventAppendCopyWith(_$ConnectionsEventAppend value,
          $Res Function(_$ConnectionsEventAppend) then) =
      __$$ConnectionsEventAppendCopyWithImpl<$Res>;
  $Res call({Connection connection});

  $ConnectionCopyWith<$Res> get connection;
}

/// @nodoc
class __$$ConnectionsEventAppendCopyWithImpl<$Res>
    extends _$ConnectionsEventCopyWithImpl<$Res>
    implements _$$ConnectionsEventAppendCopyWith<$Res> {
  __$$ConnectionsEventAppendCopyWithImpl(_$ConnectionsEventAppend _value,
      $Res Function(_$ConnectionsEventAppend) _then)
      : super(_value, (v) => _then(v as _$ConnectionsEventAppend));

  @override
  _$ConnectionsEventAppend get _value =>
      super._value as _$ConnectionsEventAppend;

  @override
  $Res call({
    Object? connection = freezed,
  }) {
    return _then(_$ConnectionsEventAppend(
      connection == freezed
          ? _value.connection
          : connection // ignore: cast_nullable_to_non_nullable
              as Connection,
    ));
  }

  @override
  $ConnectionCopyWith<$Res> get connection {
    return $ConnectionCopyWith<$Res>(_value.connection, (value) {
      return _then(_value.copyWith(connection: value));
    });
  }
}

/// @nodoc

class _$ConnectionsEventAppend implements ConnectionsEventAppend {
  const _$ConnectionsEventAppend(this.connection);

  @override
  final Connection connection;

  @override
  String toString() {
    return 'ConnectionsEvent.append(connection: $connection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionsEventAppend &&
            const DeepCollectionEquality()
                .equals(other.connection, connection));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(connection));

  @JsonKey(ignore: true)
  @override
  _$$ConnectionsEventAppendCopyWith<_$ConnectionsEventAppend> get copyWith =>
      __$$ConnectionsEventAppendCopyWithImpl<_$ConnectionsEventAppend>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetch,
    required TResult Function(Connection connection) append,
  }) {
    return append(connection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Connection connection)? append,
  }) {
    return append?.call(connection);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetch,
    TResult Function(Connection connection)? append,
    required TResult orElse(),
  }) {
    if (append != null) {
      return append(connection);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionsEventFetch value) fetch,
    required TResult Function(ConnectionsEventAppend value) append,
  }) {
    return append(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectionsEventFetch value)? fetch,
    TResult Function(ConnectionsEventAppend value)? append,
  }) {
    return append?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionsEventFetch value)? fetch,
    TResult Function(ConnectionsEventAppend value)? append,
    required TResult orElse(),
  }) {
    if (append != null) {
      return append(this);
    }
    return orElse();
  }
}

abstract class ConnectionsEventAppend implements ConnectionsEvent {
  const factory ConnectionsEventAppend(final Connection connection) =
      _$ConnectionsEventAppend;

  Connection get connection;
  @JsonKey(ignore: true)
  _$$ConnectionsEventAppendCopyWith<_$ConnectionsEventAppend> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ConnectionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Connection> connections) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Connection> connections)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Connection> connections)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionsStateInitial value) initial,
    required TResult Function(ConnectionsStateLoaded value) loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectionsStateInitial value)? initial,
    TResult Function(ConnectionsStateLoaded value)? loaded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionsStateInitial value)? initial,
    TResult Function(ConnectionsStateLoaded value)? loaded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionsStateCopyWith<$Res> {
  factory $ConnectionsStateCopyWith(
          ConnectionsState value, $Res Function(ConnectionsState) then) =
      _$ConnectionsStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$ConnectionsStateCopyWithImpl<$Res>
    implements $ConnectionsStateCopyWith<$Res> {
  _$ConnectionsStateCopyWithImpl(this._value, this._then);

  final ConnectionsState _value;
  // ignore: unused_field
  final $Res Function(ConnectionsState) _then;
}

/// @nodoc
abstract class _$$ConnectionsStateInitialCopyWith<$Res> {
  factory _$$ConnectionsStateInitialCopyWith(_$ConnectionsStateInitial value,
          $Res Function(_$ConnectionsStateInitial) then) =
      __$$ConnectionsStateInitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ConnectionsStateInitialCopyWithImpl<$Res>
    extends _$ConnectionsStateCopyWithImpl<$Res>
    implements _$$ConnectionsStateInitialCopyWith<$Res> {
  __$$ConnectionsStateInitialCopyWithImpl(_$ConnectionsStateInitial _value,
      $Res Function(_$ConnectionsStateInitial) _then)
      : super(_value, (v) => _then(v as _$ConnectionsStateInitial));

  @override
  _$ConnectionsStateInitial get _value =>
      super._value as _$ConnectionsStateInitial;
}

/// @nodoc

class _$ConnectionsStateInitial implements ConnectionsStateInitial {
  const _$ConnectionsStateInitial();

  @override
  String toString() {
    return 'ConnectionsState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionsStateInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Connection> connections) loaded,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Connection> connections)? loaded,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Connection> connections)? loaded,
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
    required TResult Function(ConnectionsStateInitial value) initial,
    required TResult Function(ConnectionsStateLoaded value) loaded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectionsStateInitial value)? initial,
    TResult Function(ConnectionsStateLoaded value)? loaded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionsStateInitial value)? initial,
    TResult Function(ConnectionsStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ConnectionsStateInitial implements ConnectionsState {
  const factory ConnectionsStateInitial() = _$ConnectionsStateInitial;
}

/// @nodoc
abstract class _$$ConnectionsStateLoadedCopyWith<$Res> {
  factory _$$ConnectionsStateLoadedCopyWith(_$ConnectionsStateLoaded value,
          $Res Function(_$ConnectionsStateLoaded) then) =
      __$$ConnectionsStateLoadedCopyWithImpl<$Res>;
  $Res call({List<Connection> connections});
}

/// @nodoc
class __$$ConnectionsStateLoadedCopyWithImpl<$Res>
    extends _$ConnectionsStateCopyWithImpl<$Res>
    implements _$$ConnectionsStateLoadedCopyWith<$Res> {
  __$$ConnectionsStateLoadedCopyWithImpl(_$ConnectionsStateLoaded _value,
      $Res Function(_$ConnectionsStateLoaded) _then)
      : super(_value, (v) => _then(v as _$ConnectionsStateLoaded));

  @override
  _$ConnectionsStateLoaded get _value =>
      super._value as _$ConnectionsStateLoaded;

  @override
  $Res call({
    Object? connections = freezed,
  }) {
    return _then(_$ConnectionsStateLoaded(
      connections: connections == freezed
          ? _value._connections
          : connections // ignore: cast_nullable_to_non_nullable
              as List<Connection>,
    ));
  }
}

/// @nodoc

class _$ConnectionsStateLoaded implements ConnectionsStateLoaded {
  const _$ConnectionsStateLoaded({required final List<Connection> connections})
      : _connections = connections;

  final List<Connection> _connections;
  @override
  List<Connection> get connections {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_connections);
  }

  @override
  String toString() {
    return 'ConnectionsState.loaded(connections: $connections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ConnectionsStateLoaded &&
            const DeepCollectionEquality()
                .equals(other._connections, _connections));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_connections));

  @JsonKey(ignore: true)
  @override
  _$$ConnectionsStateLoadedCopyWith<_$ConnectionsStateLoaded> get copyWith =>
      __$$ConnectionsStateLoadedCopyWithImpl<_$ConnectionsStateLoaded>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Connection> connections) loaded,
  }) {
    return loaded(connections);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Connection> connections)? loaded,
  }) {
    return loaded?.call(connections);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Connection> connections)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(connections);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ConnectionsStateInitial value) initial,
    required TResult Function(ConnectionsStateLoaded value) loaded,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ConnectionsStateInitial value)? initial,
    TResult Function(ConnectionsStateLoaded value)? loaded,
  }) {
    return loaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ConnectionsStateInitial value)? initial,
    TResult Function(ConnectionsStateLoaded value)? loaded,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class ConnectionsStateLoaded implements ConnectionsState {
  const factory ConnectionsStateLoaded(
      {required final List<Connection> connections}) = _$ConnectionsStateLoaded;

  List<Connection> get connections;
  @JsonKey(ignore: true)
  _$$ConnectionsStateLoadedCopyWith<_$ConnectionsStateLoaded> get copyWith =>
      throw _privateConstructorUsedError;
}
