part of 'hogwarts_branch_bloc.dart';

@freezed
class HogwartsBranchState with _$HogwartsBranchState {
  const factory HogwartsBranchState.initial() =
      HogwartsBranchStateInitial; //TODO: remove
  const factory HogwartsBranchState.loading() = HogwartsBranchStateLoading;
  const factory HogwartsBranchState.loaded({required List<House> houses}) =
      HogwartsBranchStateLoaded;
  const factory HogwartsBranchState.error() = HogwartsBranchStateError;
}

/*
@freezed
class HogwartsState with _$HogwartsState {
  const factory HogwartsState.initial() = HogwartsStateInitial; //TODO: remove
  const factory HogwartsState.loading() = HogwartsStateLoading;
  const factory HogwartsState.loaded({required HogwartsBranch branch}) =
      HogwartsStateLoaded;
  const factory HogwartsState.error() = HogwartsStateError;
  */