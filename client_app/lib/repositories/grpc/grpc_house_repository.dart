import 'dart:async';

import 'package:client_app/services/grpc_hogwarts_service.dart';
import 'package:proto/generated/hogwarts.pb.dart' as proto;

import 'package:client_app/repositories/repositories.dart';

class GrpcHouseRepository implements HouseRepository {
  late final GrpcHogwartsService _service;
  late final Stream<proto.Houses> _stream;

  final int branchId;
  final int houseId;

  GrpcHouseRepository({
    required this.branchId,
    required this.houseId,
  }) {
    _service = GrpcHogwartsService.instance;
    _stream = _service.houses;
  }

  @override
  Future<void> decrement(int points) async {
    _service.updatePoints(branchId, houseId, -points);
  }

  @override
  Future<void> increment(int points) async {
    _service.updatePoints(branchId, houseId, points);
  }

  @override
  Stream<List<int>> get stream async* {
    await for (var protoHouses in _stream) {
      final house = protoHouses.houses.firstWhere(
          (house) => house.id == houseId,
          orElse: () => proto.House());
      final points = house.points;
      final total = protoHouses.houses.fold<int>(0, (p, h) => p + h.points);
      yield [points, total];
    }
  }

  @override
  Future<void> fetch() async {
    _service.fetchBranch(branchId);
  }

  @override
  Future<void> dispose() async {
    //_service.dispose();
  }
}
