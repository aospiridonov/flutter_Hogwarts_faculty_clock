import 'dart:async';

import 'package:client_app/data/models/models.dart';
import 'package:client_app/services/grpc_hogwarts_service.dart';
import 'package:proto/generated/hogwarts.pb.dart' as proto;

import 'package:client_app/repositories/repositories.dart';
import 'package:client_app/constants/house_constants.dart' as constants;

class GrpcHogwartsBranchRepository implements HogwartsBranchRepository {
  final int branchId;
  late final GrpcHogwartsService _service;

  late final Stream<proto.Houses> _stream;

  GrpcHogwartsBranchRepository(this.branchId) {
    _service = GrpcHogwartsService.instance;
    _stream = _service.houses;
  }

  @override
  Future<House> getHouse({required int houseId}) {
    // TODO: implement getHouse
    throw UnimplementedError();
  }

  @override
  // TODO: implement houses
  Future<Houses> get houses => throw UnimplementedError();

  @override
  Stream<Houses> get stream async* {
    await for (var protoHouses in _stream) {
      print(protoHouses.branchId);
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
    }
  }

  @override
  Future<void> fetch() async {
    _service.fetchBranch(branchId);
  }

  @override
  Future<void> close() async {
    _service.dispose();
  }
}
