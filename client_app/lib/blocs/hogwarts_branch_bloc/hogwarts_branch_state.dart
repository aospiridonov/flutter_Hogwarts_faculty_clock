part of 'hogwarts_branch_bloc.dart';

@freezed
class HogwartsBranchState with _$HogwartsBranchState {
  const factory HogwartsBranchState.initial() = HogwartsBranchStateInitial;
  const factory HogwartsBranchState.loading() = HogwartsBranchStateLoading;
  const factory HogwartsBranchState.loaded({required List<House> houses}) =
      HogwartsBranchStateLoaded;
  const factory HogwartsBranchState.error() = HogwartsBranchStateError;
}
