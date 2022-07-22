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
    _branchSubscription = _repository.stream.listen((houses) {
      add(HogwartsBranchEventFetched(houses));
    });

    on<HogwartsBranchEventFetched>(_onFetched);
    on<HogwartsBranchEventGet>(_onGet);
  }

  void _onGet(
    HogwartsBranchEventGet event,
    Emitter<HogwartsBranchState> emit,
  ) async {
    emit(const HogwartsBranchState.loading());

    try {
      await _repository.fetch();
    } catch (_) {
      emit(const HogwartsBranchState.error());
    }
  }

  void _onFetched(
    HogwartsBranchEventFetched event,
    Emitter<HogwartsBranchState> emit,
  ) async {
    emit(HogwartsBranchState.loaded(houses: event.houses));
  }

  @override
  Future<void> close() {
    _branchSubscription.cancel();
    _repository.dispose();
    return super.close();
  }
}
