part of 'branches_bloc.dart';

@freezed
class BranchesEvent with _$BranchesEvent {
  const factory BranchesEvent.fetch() = BranchesEventFetch;
  const factory BranchesEvent.fetched(Branches branches) = BranchesEventFetched;
  const factory BranchesEvent.delete(Branch branch) = BranchesEventDelete;
}
