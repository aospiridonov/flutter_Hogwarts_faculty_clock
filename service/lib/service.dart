import 'dart:async';

import 'package:grpc/grpc.dart' as grpc;
import 'package:grpc/service_api.dart';
import 'package:proto/generated/hogwarts.pbgrpc.dart';
import 'package:service/db_driver.dart';
import 'package:async/async.dart' show StreamGroup;

Houses _getHouses(int branchId) {
  final houses = schoolDb.branches
      .firstWhere(
        (element) => element.id == branchId,
        orElse: () => Branch(id: -1),
      )
      .houses;
  //print(houses);
  return Houses(branchId: branchId, houses: houses);
}

class HogwartsService extends HogwartsServiceBase {
  late final StreamController<Houses> _controllerResponseHouses;

  HogwartsService() {
    _controllerResponseHouses = StreamController<Houses>.broadcast();
  }

  @override
  Future<School> getSchool(ServiceCall call, GetSchoolRequest request) async {
    print('getSchool');
    return schoolDb;
  }

  @override
  Future<Empty> updatePoints(
      grpc.ServiceCall call, UpdateHousePointsRequest request) async {
    final branchId = request.branchId;
    final houseId = request.houseId;
    final points = request.points;
    print('updatePoints $branchId, $houseId, $points');

    final house = schoolDb.branches
        .firstWhere(
          (element) => element.id == branchId,
          orElse: () => Branch(id: -1),
        )
        .houses
        .firstWhere((house) => house.id == houseId);
    if (house.points + points > 0) {
      house.points += points;
    } else {
      house.points = 0;
    }

    return Empty();
  }

  @override
  Future<Empty> fetchHouses(
      grpc.ServiceCall call, Stream<BranchID> request) async {
    print('fetchHouses');
    await for (var branch in request) {
      print('fetchHouses ${branch.id}');
      _controllerResponseHouses.add(
        _getHouses(branch.id),
      );
    }
    print('end fetchHouses');
    return Empty();
  }

  @override
  Stream<Houses> streamHouses(grpc.ServiceCall call, BranchID request) {
    print('streamHouses');
    return _controllerResponseHouses.stream;
  }
}

class Server {
  Future<void> run() async {
    final server = grpc.Server([HogwartsService()]);
    await server.serve(port: 5555);
    print('Serving on the port: ${server.port}');
  }
}
