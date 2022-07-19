part of 'hogwarts_branch_bloc.dart';

@freezed
class HogwartsBranchEvent with _$HogwartsBranchEvent {
  const factory HogwartsBranchEvent.fetch() = HogwartsBranchEventFetch;
}
