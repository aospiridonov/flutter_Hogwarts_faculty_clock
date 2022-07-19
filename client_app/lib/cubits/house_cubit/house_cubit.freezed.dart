// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'house_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HouseState {
  int get points => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int points, int total) points,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int points, int total)? points,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int points, int total)? points,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseStatePoints value) points,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HouseStatePoints value)? points,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseStatePoints value)? points,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HouseStateCopyWith<HouseState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseStateCopyWith<$Res> {
  factory $HouseStateCopyWith(
          HouseState value, $Res Function(HouseState) then) =
      _$HouseStateCopyWithImpl<$Res>;
  $Res call({int points, int total});
}

/// @nodoc
class _$HouseStateCopyWithImpl<$Res> implements $HouseStateCopyWith<$Res> {
  _$HouseStateCopyWithImpl(this._value, this._then);

  final HouseState _value;
  // ignore: unused_field
  final $Res Function(HouseState) _then;

  @override
  $Res call({
    Object? points = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$HouseStatePointsCopyWith<$Res>
    implements $HouseStateCopyWith<$Res> {
  factory _$$HouseStatePointsCopyWith(
          _$HouseStatePoints value, $Res Function(_$HouseStatePoints) then) =
      __$$HouseStatePointsCopyWithImpl<$Res>;
  @override
  $Res call({int points, int total});
}

/// @nodoc
class __$$HouseStatePointsCopyWithImpl<$Res>
    extends _$HouseStateCopyWithImpl<$Res>
    implements _$$HouseStatePointsCopyWith<$Res> {
  __$$HouseStatePointsCopyWithImpl(
      _$HouseStatePoints _value, $Res Function(_$HouseStatePoints) _then)
      : super(_value, (v) => _then(v as _$HouseStatePoints));

  @override
  _$HouseStatePoints get _value => super._value as _$HouseStatePoints;

  @override
  $Res call({
    Object? points = freezed,
    Object? total = freezed,
  }) {
    return _then(_$HouseStatePoints(
      points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$HouseStatePoints implements HouseStatePoints {
  const _$HouseStatePoints(this.points, this.total);

  @override
  final int points;
  @override
  final int total;

  @override
  String toString() {
    return 'HouseState.points(points: $points, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HouseStatePoints &&
            const DeepCollectionEquality().equals(other.points, points) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(points),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$$HouseStatePointsCopyWith<_$HouseStatePoints> get copyWith =>
      __$$HouseStatePointsCopyWithImpl<_$HouseStatePoints>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int points, int total) points,
  }) {
    return points(this.points, total);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int points, int total)? points,
  }) {
    return points?.call(this.points, total);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int points, int total)? points,
    required TResult orElse(),
  }) {
    if (points != null) {
      return points(this.points, total);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HouseStatePoints value) points,
  }) {
    return points(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(HouseStatePoints value)? points,
  }) {
    return points?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HouseStatePoints value)? points,
    required TResult orElse(),
  }) {
    if (points != null) {
      return points(this);
    }
    return orElse();
  }
}

abstract class HouseStatePoints implements HouseState {
  const factory HouseStatePoints(final int points, final int total) =
      _$HouseStatePoints;

  @override
  int get points;
  @override
  int get total;
  @override
  @JsonKey(ignore: true)
  _$$HouseStatePointsCopyWith<_$HouseStatePoints> get copyWith =>
      throw _privateConstructorUsedError;
}
