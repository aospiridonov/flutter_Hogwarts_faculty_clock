// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'connection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Connection {
  int get timestamp => throw _privateConstructorUsedError;
  Map<String, String> get info => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectionCopyWith<Connection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionCopyWith<$Res> {
  factory $ConnectionCopyWith(
          Connection value, $Res Function(Connection) then) =
      _$ConnectionCopyWithImpl<$Res>;
  $Res call({int timestamp, Map<String, String> info});
}

/// @nodoc
class _$ConnectionCopyWithImpl<$Res> implements $ConnectionCopyWith<$Res> {
  _$ConnectionCopyWithImpl(this._value, this._then);

  final Connection _value;
  // ignore: unused_field
  final $Res Function(Connection) _then;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? info = freezed,
  }) {
    return _then(_value.copyWith(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      info: info == freezed
          ? _value.info
          : info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
abstract class _$$_ConnectionCopyWith<$Res>
    implements $ConnectionCopyWith<$Res> {
  factory _$$_ConnectionCopyWith(
          _$_Connection value, $Res Function(_$_Connection) then) =
      __$$_ConnectionCopyWithImpl<$Res>;
  @override
  $Res call({int timestamp, Map<String, String> info});
}

/// @nodoc
class __$$_ConnectionCopyWithImpl<$Res> extends _$ConnectionCopyWithImpl<$Res>
    implements _$$_ConnectionCopyWith<$Res> {
  __$$_ConnectionCopyWithImpl(
      _$_Connection _value, $Res Function(_$_Connection) _then)
      : super(_value, (v) => _then(v as _$_Connection));

  @override
  _$_Connection get _value => super._value as _$_Connection;

  @override
  $Res call({
    Object? timestamp = freezed,
    Object? info = freezed,
  }) {
    return _then(_$_Connection(
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      info: info == freezed
          ? _value._info
          : info // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc

class _$_Connection implements _Connection {
  const _$_Connection(
      {required this.timestamp, required final Map<String, String> info})
      : _info = info;

  @override
  final int timestamp;
  final Map<String, String> _info;
  @override
  Map<String, String> get info {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_info);
  }

  @override
  String toString() {
    return 'Connection(timestamp: $timestamp, info: $info)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Connection &&
            const DeepCollectionEquality().equals(other.timestamp, timestamp) &&
            const DeepCollectionEquality().equals(other._info, _info));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(timestamp),
      const DeepCollectionEquality().hash(_info));

  @JsonKey(ignore: true)
  @override
  _$$_ConnectionCopyWith<_$_Connection> get copyWith =>
      __$$_ConnectionCopyWithImpl<_$_Connection>(this, _$identity);
}

abstract class _Connection implements Connection {
  const factory _Connection(
      {required final int timestamp,
      required final Map<String, String> info}) = _$_Connection;

  @override
  int get timestamp;
  @override
  Map<String, String> get info;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectionCopyWith<_$_Connection> get copyWith =>
      throw _privateConstructorUsedError;
}
