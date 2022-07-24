import 'dart:async';

import 'package:client_app/services/grpc_hogwarts_service.dart';
import 'package:client_app/services/services.dart';
import 'package:proto/generated/hogwarts.pb.dart' as proto;

import 'package:client_app/repositories/repositories.dart';

class GrpcHouseRepository implements HouseRepository {
  late final GrpcBranchService _service;
  late final Stream<proto.Houses> _stream;

  final int id;

  GrpcHouseRepository(
    this._service, {
    required this.id,
  }) {
    _stream = _service.houses;
  }

  @override
  Future<void> increment(int points) async {
    _service.updatePoints(id, points);
  }

  @override
  Future<void> decrement(int points) async {
    _service.updatePoints(id, -points);
  }

  @override
  Stream<List<int>> get stream async* {
    await for (var protoHouses in _stream) {
      final house = protoHouses.houses
          .firstWhere((house) => house.id == id, orElse: () => proto.House());
      final points = house.points;
      final total = protoHouses.houses.fold<int>(0, (p, h) => p + h.points);
      yield [points, total];
    }
  }

  @override
  Future<void> fetch() async {
    _service.fetchBranch();
  }

  @override
  Future<void> dispose() async {
    //_service.dispose();
  }
}
