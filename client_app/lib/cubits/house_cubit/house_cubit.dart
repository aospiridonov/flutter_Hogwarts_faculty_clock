import 'package:client_app/repositories/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'house_state.dart';
part 'house_cubit.freezed.dart';

class HouseCubit extends Cubit<HouseState> {
  final HouseRepository _repository;

  HouseCubit(this._repository) : super(const HouseState.points(0, 1));

  void init() {
    emit(HouseState.points(_repository.points, _repository.total));
  }

  void increment(int points) {
    _repository.increment(points);
    //repo
    emit(HouseState.points(_repository.points, _repository.total));
  }

  void decrement(int points) {
    //repo
    _repository.decrement(points);
    emit(HouseState.points(_repository.points, _repository.total));
  }
}
