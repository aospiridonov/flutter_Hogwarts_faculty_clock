import 'package:client_app/repositories/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'house_state.dart';
part 'house_cubit.freezed.dart';

class HouseCubit extends Cubit<HouseState> {
  final HouseRepository _repository;

  HouseCubit(this._repository) : super(const HouseState.points(0, 1));

  Future<void> load() async {
    final points = await _repository.points;
    final total = await _repository.total;
    emit(HouseState.points(points, total));
  }

  Future<void> increment(int points) async {
    await _repository.increment(points);
    await load();
  }

  Future<void> decrement(int points) async {
    await _repository.decrement(points);
    await load();
  }
}
