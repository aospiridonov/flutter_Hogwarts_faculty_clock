// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_branch_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditBranchEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function() submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function()? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditBranchEventTitleChanged value) titleChanged,
    required TResult Function(EditBranchEventSubmitted value) submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditBranchEventTitleChanged value)? titleChanged,
    TResult Function(EditBranchEventSubmitted value)? submitted,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditBranchEventTitleChanged value)? titleChanged,
    TResult Function(EditBranchEventSubmitted value)? submitted,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditBranchEventCopyWith<$Res> {
  factory $EditBranchEventCopyWith(
          EditBranchEvent value, $Res Function(EditBranchEvent) then) =
      _$EditBranchEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EditBranchEventCopyWithImpl<$Res>
    implements $EditBranchEventCopyWith<$Res> {
  _$EditBranchEventCopyWithImpl(this._value, this._then);

  final EditBranchEvent _value;
  // ignore: unused_field
  final $Res Function(EditBranchEvent) _then;
}

/// @nodoc
abstract class _$$EditBranchEventTitleChangedCopyWith<$Res> {
  factory _$$EditBranchEventTitleChangedCopyWith(
          _$EditBranchEventTitleChanged value,
          $Res Function(_$EditBranchEventTitleChanged) then) =
      __$$EditBranchEventTitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$$EditBranchEventTitleChangedCopyWithImpl<$Res>
    extends _$EditBranchEventCopyWithImpl<$Res>
    implements _$$EditBranchEventTitleChangedCopyWith<$Res> {
  __$$EditBranchEventTitleChangedCopyWithImpl(
      _$EditBranchEventTitleChanged _value,
      $Res Function(_$EditBranchEventTitleChanged) _then)
      : super(_value, (v) => _then(v as _$EditBranchEventTitleChanged));

  @override
  _$EditBranchEventTitleChanged get _value =>
      super._value as _$EditBranchEventTitleChanged;

  @override
  $Res call({
    Object? title = freezed,
  }) {
    return _then(_$EditBranchEventTitleChanged(
      title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$EditBranchEventTitleChanged implements EditBranchEventTitleChanged {
  const _$EditBranchEventTitleChanged(this.title);

  @override
  final String title;

  @override
  String toString() {
    return 'EditBranchEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditBranchEventTitleChanged &&
            const DeepCollectionEquality().equals(other.title, title));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(title));

  @JsonKey(ignore: true)
  @override
  _$$EditBranchEventTitleChangedCopyWith<_$EditBranchEventTitleChanged>
      get copyWith => __$$EditBranchEventTitleChangedCopyWithImpl<
          _$EditBranchEventTitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function() submitted,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function()? submitted,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditBranchEventTitleChanged value) titleChanged,
    required TResult Function(EditBranchEventSubmitted value) submitted,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditBranchEventTitleChanged value)? titleChanged,
    TResult Function(EditBranchEventSubmitted value)? submitted,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditBranchEventTitleChanged value)? titleChanged,
    TResult Function(EditBranchEventSubmitted value)? submitted,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class EditBranchEventTitleChanged implements EditBranchEvent {
  const factory EditBranchEventTitleChanged(final String title) =
      _$EditBranchEventTitleChanged;

  String get title;
  @JsonKey(ignore: true)
  _$$EditBranchEventTitleChangedCopyWith<_$EditBranchEventTitleChanged>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditBranchEventSubmittedCopyWith<$Res> {
  factory _$$EditBranchEventSubmittedCopyWith(_$EditBranchEventSubmitted value,
          $Res Function(_$EditBranchEventSubmitted) then) =
      __$$EditBranchEventSubmittedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EditBranchEventSubmittedCopyWithImpl<$Res>
    extends _$EditBranchEventCopyWithImpl<$Res>
    implements _$$EditBranchEventSubmittedCopyWith<$Res> {
  __$$EditBranchEventSubmittedCopyWithImpl(_$EditBranchEventSubmitted _value,
      $Res Function(_$EditBranchEventSubmitted) _then)
      : super(_value, (v) => _then(v as _$EditBranchEventSubmitted));

  @override
  _$EditBranchEventSubmitted get _value =>
      super._value as _$EditBranchEventSubmitted;
}

/// @nodoc

class _$EditBranchEventSubmitted implements EditBranchEventSubmitted {
  const _$EditBranchEventSubmitted();

  @override
  String toString() {
    return 'EditBranchEvent.submitted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditBranchEventSubmitted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String title) titleChanged,
    required TResult Function() submitted,
  }) {
    return submitted();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function()? submitted,
  }) {
    return submitted?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String title)? titleChanged,
    TResult Function()? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditBranchEventTitleChanged value) titleChanged,
    required TResult Function(EditBranchEventSubmitted value) submitted,
  }) {
    return submitted(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(EditBranchEventTitleChanged value)? titleChanged,
    TResult Function(EditBranchEventSubmitted value)? submitted,
  }) {
    return submitted?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditBranchEventTitleChanged value)? titleChanged,
    TResult Function(EditBranchEventSubmitted value)? submitted,
    required TResult orElse(),
  }) {
    if (submitted != null) {
      return submitted(this);
    }
    return orElse();
  }
}

abstract class EditBranchEventSubmitted implements EditBranchEvent {
  const factory EditBranchEventSubmitted() = _$EditBranchEventSubmitted;
}
