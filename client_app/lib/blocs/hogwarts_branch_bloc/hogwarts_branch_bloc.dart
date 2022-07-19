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
  HogwartsBranchBloc(this._repository)
      : super(const HogwartsBranchState.initial()) {
    on<HogwartsBranchEventFetch>((event, emit) {
      emit(const HogwartsBranchState.loading());
      try {
        final houses = _repository.getHouses();
        emit(HogwartsBranchState.loaded(houses: houses));
      } catch (_) {
        emit(const HogwartsBranchState.error());
      }
    });
  }
}
