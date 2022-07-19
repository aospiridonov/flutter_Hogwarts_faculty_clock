import 'package:freezed_annotation/freezed_annotation.dart';

part 'hogwarts_branch.freezed.dart';

@freezed
class HogwartsBranch with _$HogwartsBranch {
  const factory HogwartsBranch({required int id, required String name}) =
      _HogwartsBranch;
}
