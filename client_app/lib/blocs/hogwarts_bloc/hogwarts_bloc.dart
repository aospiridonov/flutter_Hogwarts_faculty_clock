import 'package:client_app/data/models/models.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:client_app/repositories/repositories.dart';

part 'hogwarts_bloc.freezed.dart';
//part 'hogwarts_bloc.g.dart';

part 'hogwarts_event.dart';
part 'hogwarts_state.dart';

class HogwartsBloc extends Bloc<HogwartsEvent, HogwartsState> {
  final SchoolRepository _repository;
  HogwartsBloc(this._repository) : super(const HogwartsState.initial()) {
    on<HogwartsEventFetch>((event, emit) async {
      //await Future.delayed(Duration(seconds: 1));
      emit(const HogwartsState.loading());
      //await Future.delayed(Duration(seconds: 1));
      try {
        var hogwartsBranch = await _repository.getBranch(event.id);
        emit(HogwartsState.loaded(branch: hogwartsBranch));
      } catch (_) {
        emit(const HogwartsState.error());
      }
    });
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
