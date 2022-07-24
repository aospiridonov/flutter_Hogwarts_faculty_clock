import 'dart:async';

import 'package:client_app/data/models/models.dart';
import 'package:client_app/repositories/repositories.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'branches_bloc.freezed.dart';
//part 'branches_bloc.g.dart';

part 'branches_event.dart';
part 'branches_state.dart';

class BranchesBloc extends Bloc<BranchesEvent, BranchesState> {
  final SchoolRepository _repository;
  late final StreamSubscription<Branches> _subscription;

  BranchesBloc(this._repository) : super(const BranchesState.initial()) {
    _subscription = _repository.stream
        .listen((branches) => add(BranchesEventFetched(branches)));

    on<BranchesEventFetch>(_onFetch);
    on<BranchesEventFetched>(_onFetched);
    on<BranchesEventDelete>(_onDeleteBranch);
  }

  Future<void> _onFetch(
    BranchesEventFetch event,
    Emitter<BranchesState> emit,
  ) async {
    emit(const BranchesState.loading());
    try {
      final branches = await _repository.fetch();
      emit(BranchesState.loaded(branches: branches));
    } catch (_) {
      emit(const BranchesState.failure());
    }
  }

  Future<void> _onFetched(
    BranchesEventFetched event,
    Emitter<BranchesState> emit,
  ) async {
    emit(BranchesState.loaded(branches: event.branches));
  }

  FutureOr<void> _onDeleteBranch(
      BranchesEventDelete event, Emitter<BranchesState> emit) async {
    emit(const BranchesState.loading());
    await _repository.removeBranch(event.branch);
  }
}
