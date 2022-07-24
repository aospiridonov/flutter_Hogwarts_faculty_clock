import 'package:client_app/data/models/models.dart';
import 'package:client_app/services/grpc_dumbledore_service.dart';
import 'package:proto/generated/hogwarts.pb.dart' as proto;

class GrpcDumbledoreRepository {
  late final GrpcDumbledoreService _service;
  late final Stream<proto.Connection> _stream;

  GrpcDumbledoreRepository() {
    _service = GrpcDumbledoreService();
    _stream = _service.connections;
  }

  Future<List<Connection>> getConnections() async {
    final protoConnections = await _service.getConnections();
    return protoConnections.infos.map((protoConnection) {
      return Connection(
          timestamp: protoConnection.timestamp.toInt(),
          info: protoConnection.info);
    }).toList();
  }

  Stream<Connection> get stream async* {
    await for (var protoConnection in _stream) {
      yield _fromProto(protoConnection);
    }
  }

  Connection _fromProto(proto.Connection protoConnection) {
    return Connection(
        timestamp: protoConnection.timestamp.toInt(),
        info: protoConnection.info);
  }


  Future<void> dispose() async {
    _service.dispose();
  }
}
