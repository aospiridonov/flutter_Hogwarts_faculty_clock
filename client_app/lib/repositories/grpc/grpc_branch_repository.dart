import 'dart:async';

import 'package:client_app/constants/house_constants.dart' as constants;
import 'package:client_app/data/models/models.dart';
import 'package:client_app/repositories/repositories.dart';
import 'package:client_app/services/services.dart';
import 'package:proto/generated/hogwarts.pb.dart' as proto;

class GrpcBranchRepository implements BranchRepository {
  late final GrpcBranchService _service;
  late final Stream<proto.Houses> _stream;

  GrpcBranchRepository(this._service) {
    _stream = _service.houses;
  }

  @override
  Future<void> fetch() async {
    await _service.connect();
    _service.fetchBranch();
  }

  @override
  Stream<Houses> get stream async* {
    await for (var protoHouses in _stream) {
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
  Future<void> dispose() async {
    //_service.dispose();
  }

  @override
  Future<Branch> getBranch(int id) {
    // TODO: implement getBranch
    throw UnimplementedError();
  }
}
