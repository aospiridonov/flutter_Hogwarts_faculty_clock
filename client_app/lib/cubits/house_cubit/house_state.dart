part of 'house_cubit.dart';

@freezed
class HouseState with _$HouseState {
  const factory HouseState.points(int points, int total) = HouseStatePoints;
}
