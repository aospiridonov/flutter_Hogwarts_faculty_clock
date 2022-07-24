part of 'branch_bloc.dart';

@freezed
class BranchState with _$BranchState {
  const factory BranchState.initial() = HogwartsBranchStateInitial;
  const factory BranchState.loading() = HogwartsBranchStateLoading;
  const factory BranchState.loaded({required List<House> houses}) =
      BranchStateLoaded;
  const factory BranchState.error() = BranchStateError;
}
