part of 'branch_bloc.dart';

@freezed
class BranchEvent with _$BranchEvent {
  const factory BranchEvent.fetch() = BranchEventFetch;
  const factory BranchEvent.fetched(Houses houses) = BranchEventFetched;
}
