part of 'branches_bloc.dart';

@freezed
class BranchesState with _$BranchesState {
  const factory BranchesState.initial() = BranchesStateInitial;
  const factory BranchesState.loading() = BranchesStateLoading;
  const factory BranchesState.loaded({required List<Branch> branches}) =
      BranchesStateLoaded;
  const factory BranchesState.failure() = BranchesStateFailure;
}
