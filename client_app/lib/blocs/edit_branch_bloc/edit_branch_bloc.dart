import 'dart:async';

import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:client_app/data/models/models.dart';
import 'package:client_app/repositories/repositories.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'edit_branch_bloc.freezed.dart';
part 'edit_branch_event.dart';
part 'edit_branch_state.dart';

class EditBranchBloc extends Bloc<EditBranchEvent, EditBranchState> {
  final SchoolRepository _repository;

  EditBranchBloc(this._repository, {Branch? branch})
      : super(EditBranchState(
          initialBranch: branch,
          title: branch?.name ?? '',
        )) {
    on<EditBranchEventTitleChanged>(_onTitleChanged);
    on<EditBranchEventSubmitted>(_onSubmitted);
  }

  void _onTitleChanged(
    EditBranchEventTitleChanged event,
    Emitter<EditBranchState> emit,
  ) {
    emit(state.copyWith(title: event.title));
  }

  Future<void> _onSubmitted(
    EditBranchEventSubmitted event,
    Emitter<EditBranchState> emit,
  ) async {
    emit(state.copyWith(status: EditStatus.loading));
    try {
      await _repository.addBranch(Branch(id: -1, name: state.title));
      emit(state.copyWith(status: EditStatus.success));
    } catch (e) {
      emit(state.copyWith(status: EditStatus.failure));
    }
  }
}
