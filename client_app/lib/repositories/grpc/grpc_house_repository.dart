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
    _service.fetchBranch(branchId);
    /*
    var house = await _storage.getHouse(branchId: branchId, id: houseId);
    points = house.points - points;
    return _storage.setHouse(
      branchId: branchId,
      id: houseId,
      house: house.copyWith(
        points: (points > 0) ? points : 0,
      ),
    );
    */
  }

  @override
  Future<void> increment(int points) async {
    _service.updatePoints(branchId, houseId, points);
    _service.fetchBranch(branchId);
    /*
    var house = await _storage.getHouse(branchId: branchId, id: houseId);
    return _storage.setHouse(
      branchId: branchId,
      id: houseId,
      house: house.copyWith(
        points: house.points + points,
      ),
    );
    */
  }

  @override
  Future<int> get total async {
    /*
    final houses = await _storage.getHouses(branchId: branchId);
    return houses.fold<int>(0, (p, e) => p + e.points);
    */
    return 1;
  }

  @override
  Future<int> get points async {
    /*
    final house = await _storage.getHouse(
      branchId: branchId,
      id: houseId,
    );
    return house.points;
    */
    return 0;
  }

  @override
  Stream<List<int>> get stream async* {
    await for (var protoHouses in _stream) {
      print(protoHouses.branchId);
      final house = protoHouses.houses.firstWhere(
          (house) => house.id == houseId,
          orElse: () => proto.House());
      final points = house.points;
      final total = protoHouses.houses.fold<int>(0, (p, h) => p + h.points);
      yield [points, total];
      /*
      yield protoHouses.houses.map((protoHouse) {
        final houseId = protoHouse.id;
        final points = protoHouse.points;
        final enumHouse = constants.House.values[houseId];
        return House(
          id: enumHouse.index,
          name: enumHouse.name,
          color: enumHouse.color,
          image: enumHouse.image,
          points: points,
        );
      }).toList();
    */
      //
    }
  }

  @override
  Future<void> fetch() async {
    _service.fetchBranch(branchId);
  }
}
