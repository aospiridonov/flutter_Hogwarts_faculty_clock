import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:client_app/data/models/models.dart';
import 'package:client_app/repositories/repositories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'branch_event.dart';
part 'branch_state.dart';
part 'branch_bloc.freezed.dart';

class BranchBloc extends Bloc<BranchEvent, BranchState> {
  final BranchRepository _repository;
  late final StreamSubscription<Houses> _branchSubscription;

  late final Branch _branch;

  BranchBloc(this._repository) : super(const BranchState.initial()) {
    _branchSubscription = _repository.stream.listen((houses) {
      add(BranchEventFetched(houses));
    });

    on<BranchEventFetched>(_onFetched);
    on<BranchEventFetch>(_onGet);
    //_repository.

    _branch = Branch(name: 'asdasdasd', id: 1); //TODO: get into Branch
    _repository.
  }

  Branch get branch => _branch;

  void _onGet(
    BranchEventFetch event,
    Emitter<BranchState> emit,
  ) async {
    emit(const BranchState.loading());

    try {
      await _repository.fetch();
    } catch (_) {
      emit(const BranchState.error());
    }
  }

  void _onFetched(
    BranchEventFetched event,
    Emitter<BranchState> emit,
  ) async {
    emit(BranchState.loaded(houses: event.houses));
  }

  @override
  Future<void> close() {
    _branchSubscription.cancel();
    _repository.dispose();
    return super.close();
  }
}
