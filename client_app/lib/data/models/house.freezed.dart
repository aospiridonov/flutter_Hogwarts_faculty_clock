// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'house.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$House {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  Color get color => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HouseCopyWith<House> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HouseCopyWith<$Res> {
  factory $HouseCopyWith(House value, $Res Function(House) then) =
      _$HouseCopyWithImpl<$Res>;
  $Res call({int id, String name, Color color, String image, int points});
}

/// @nodoc
class _$HouseCopyWithImpl<$Res> implements $HouseCopyWith<$Res> {
  _$HouseCopyWithImpl(this._value, this._then);

  final House _value;
  // ignore: unused_field
  final $Res Function(House) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? image = freezed,
    Object? points = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_HouseCopyWith<$Res> implements $HouseCopyWith<$Res> {
  factory _$$_HouseCopyWith(_$_House value, $Res Function(_$_House) then) =
      __$$_HouseCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name, Color color, String image, int points});
}

/// @nodoc
class __$$_HouseCopyWithImpl<$Res> extends _$HouseCopyWithImpl<$Res>
    implements _$$_HouseCopyWith<$Res> {
  __$$_HouseCopyWithImpl(_$_House _value, $Res Function(_$_House) _then)
      : super(_value, (v) => _then(v as _$_House));

  @override
  _$_House get _value => super._value as _$_House;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? color = freezed,
    Object? image = freezed,
    Object? points = freezed,
  }) {
    return _then(_$_House(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as Color,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_House implements _House {
  const _$_House(
      {required this.id,
      required this.name,
      required this.color,
      required this.image,
      required this.points});

  @override
  final int id;
  @override
  final String name;
  @override
  final Color color;
  @override
  final String image;
  @override
  final int points;

  @override
  String toString() {
    return 'House(id: $id, name: $name, color: $color, image: $image, points: $points)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_House &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality().equals(other.points, points));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(points));

  @JsonKey(ignore: true)
  @override
  _$$_HouseCopyWith<_$_House> get copyWith =>
      __$$_HouseCopyWithImpl<_$_House>(this, _$identity);
}

abstract class _House implements House {
  const factory _House(
      {required final int id,
      required final String name,
      required final Color color,
      required final String image,
      required final int points}) = _$_House;

  @override
  int get id;
  @override
  String get name;
  @override
  Color get color;
  @override
  String get image;
  @override
  int get points;
  @override
  @JsonKey(ignore: true)
  _$$_HouseCopyWith<_$_House> get copyWith =>
      throw _privateConstructorUsedError;
}
