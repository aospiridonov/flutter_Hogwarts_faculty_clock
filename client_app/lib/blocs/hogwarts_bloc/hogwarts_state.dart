part of 'hogwarts_bloc.dart';

@freezed
class HogwartsState with _$HogwartsState {
  const factory HogwartsState.initial() = HogwartsStateInitial;
  const factory HogwartsState.loading() = HogwartsStateLoading;
  const factory HogwartsState.loaded({required HogwartsBranch branch}) =
      HogwartsStateLoaded;
  const factory HogwartsState.error() = HogwartsStateError;
}
