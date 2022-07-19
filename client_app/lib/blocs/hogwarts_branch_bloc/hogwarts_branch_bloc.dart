import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:client_app/data/models/models.dart';
import 'package:client_app/repositories/repositories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hogwarts_branch_event.dart';
part 'hogwarts_branch_state.dart';
part 'hogwarts_branch_bloc.freezed.dart';

class HogwartsBranchBloc
    extends Bloc<HogwartsBranchEvent, HogwartsBranchState> {
  final HogwartsBranchRepository _repository;
  late final StreamSubscription<Houses> _branchSubscription;

  HogwartsBranchBloc(this._repository)
      : super(const HogwartsBranchState.initial()) {
    on<HogwartsBranchEventFetch>(_onFetched);
    _branchSubscription = _repository.stream.listen(
      (houses) {
        add(const HogwartsBranchEventFetch());
        //emit(HogwartsBranchState.loaded(houses: houses));
      },
    );
  }

  void _onFetched(
    HogwartsBranchEventFetch event,
    Emitter<HogwartsBranchState> emit,
  ) async {
    emit(const HogwartsBranchState.loading());
    try {
      final houses = await _repository.houses;
      emit(HogwartsBranchState.loaded(houses: houses));
    } catch (_) {
      emit(const HogwartsBranchState.error());
    }
  }

  @override
  Future<void> close() {
    _branchSubscription.cancel();
    return super.close();
  }
}
