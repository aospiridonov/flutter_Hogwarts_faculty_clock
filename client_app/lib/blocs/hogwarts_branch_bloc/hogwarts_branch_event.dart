part of 'hogwarts_branch_bloc.dart';

@freezed
class HogwartsBranchEvent with _$HogwartsBranchEvent {
  const factory HogwartsBranchEvent.get() = HogwartsBranchEventGet;
  const factory HogwartsBranchEvent.fetched(Houses houses) =
      HogwartsBranchEventFetched;
}
