import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch.freezed.dart';

typedef Branches = List<Branch>;

@freezed
class Branch with _$Branch {
  const factory Branch({required int id, required String name}) = _Branch;
}
