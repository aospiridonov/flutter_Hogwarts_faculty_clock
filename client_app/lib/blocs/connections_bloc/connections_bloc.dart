import 'dart:async';

import 'package:client_app/data/models/models.dart';
import 'package:client_app/repositories/grpc/grpc_dumbledore_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'connections_bloc.freezed.dart';
part 'connections_event.dart';
part 'connections_state.dart';

class ConnectionsBloc extends Bloc<ConnectionsEvent, ConnectionsState> {
  late final GrpcDumbledoreRepository _repository;
  late final StreamSubscription<Connection> _subscription;

  final Connections _connections = [];

  ConnectionsBloc() : super(const ConnectionsStateInitial()) {
    _repository = GrpcDumbledoreRepository();
    _subscription = _repository.stream.listen((connection) {
      add(ConnectionsEventAppend(connection));
    });

    on<ConnectionsEventAppend>((event, emit) async {
      _connections.add(event.connection);
      emit(ConnectionsState.loaded(connections: [..._connections.reversed]));
    });

    on<ConnectionsEventFetch>((event, emit) async {
      _connections.addAll(await _repository.getConnections());
      emit(ConnectionsState.loaded(connections: _connections));
    });
  }

  @override
  Future<void> close() {
    _subscription.cancel();
    _repository.dispose();
    return super.close();
  }
}
