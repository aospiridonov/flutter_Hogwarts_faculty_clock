// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'hogwarts_branch.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HogwartsBranch {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HogwartsBranchCopyWith<HogwartsBranch> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HogwartsBranchCopyWith<$Res> {
  factory $HogwartsBranchCopyWith(
          HogwartsBranch value, $Res Function(HogwartsBranch) then) =
      _$HogwartsBranchCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$HogwartsBranchCopyWithImpl<$Res>
    implements $HogwartsBranchCopyWith<$Res> {
  _$HogwartsBranchCopyWithImpl(this._value, this._then);

  final HogwartsBranch _value;
  // ignore: unused_field
  final $Res Function(HogwartsBranch) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
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
    ));
  }
}

/// @nodoc
abstract class _$$_HogwartsBranchCopyWith<$Res>
    implements $HogwartsBranchCopyWith<$Res> {
  factory _$$_HogwartsBranchCopyWith(
          _$_HogwartsBranch value, $Res Function(_$_HogwartsBranch) then) =
      __$$_HogwartsBranchCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$$_HogwartsBranchCopyWithImpl<$Res>
    extends _$HogwartsBranchCopyWithImpl<$Res>
    implements _$$_HogwartsBranchCopyWith<$Res> {
  __$$_HogwartsBranchCopyWithImpl(
      _$_HogwartsBranch _value, $Res Function(_$_HogwartsBranch) _then)
      : super(_value, (v) => _then(v as _$_HogwartsBranch));

  @override
  _$_HogwartsBranch get _value => super._value as _$_HogwartsBranch;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_HogwartsBranch(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_HogwartsBranch implements _HogwartsBranch {
  const _$_HogwartsBranch({required this.id, required this.name});

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'HogwartsBranch(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HogwartsBranch &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_HogwartsBranchCopyWith<_$_HogwartsBranch> get copyWith =>
      __$$_HogwartsBranchCopyWithImpl<_$_HogwartsBranch>(this, _$identity);
}

abstract class _HogwartsBranch implements HogwartsBranch {
  const factory _HogwartsBranch(
      {required final int id, required final String name}) = _$_HogwartsBranch;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_HogwartsBranchCopyWith<_$_HogwartsBranch> get copyWith =>
      throw _privateConstructorUsedError;
}
