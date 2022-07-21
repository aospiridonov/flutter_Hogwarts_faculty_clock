import 'dart:async';

import 'package:client_app/repositories/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'house_state.dart';
part 'house_cubit.freezed.dart';

class HouseCubit extends Cubit<HouseState> {
  final HouseRepository _repository;
  late final StreamSubscription<List<int>> _subscription;

  HouseCubit(this._repository) : super(const HouseState.points(0, 1)) {
    _subscription = _repository.stream.listen(
      (values) {
        emit(HouseState.points(values[0], values[1]));
        //add(HogwartsBranchEventFetched(houses));
      },
    );
  }

  Future<void> load() async {
    _repository.fetch();
    /*final points = await _repository.points;
    final total = await _repository.total;
    emit(HouseState.points(points, total));
    */
  }

  Future<void> increment(int points) async {
    await _repository.increment(points);
    //await load();
  }

  Future<void> decrement(int points) async {
    await _repository.decrement(points);
    //await load();
  }
}
