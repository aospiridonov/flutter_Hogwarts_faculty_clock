import 'dart:async';

import 'package:grpc/grpc.dart' as grpc;

import 'package:proto/generated/hogwarts.pbgrpc.dart';
import 'package:service/db_driver.dart';

class HogwartsService extends HogwartsServiceBase {
  late final StreamController<Houses> _controllerResponseHouses;
  late final StreamController<Branches> _controllerResponseBranches;

  HogwartsService() {
    _controllerResponseHouses = StreamController<Houses>.broadcast();
    _controllerResponseBranches = StreamController<Branches>.broadcast();
  }

  @override
  Future<Empty> connect(grpc.ServiceCall call, Empty request) async {
    return Empty();
  }

  @override
  Future<Empty> updatePoints(
      grpc.ServiceCall call, UpdateHousePointsRequest request) async {
    final branchId = request.branchId;
    final houseId = request.houseId;
    final points = request.points;
    print('updatePoints $branchId, $houseId, $points');
    _updatePoints(branchId, houseId, points);
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

  @override
  Future<Branches> fetchBranches(grpc.ServiceCall call, Empty request) async {
    print('fetchBranches');
    return _getBranches();
  }

  @override
  Stream<Branches> streamBranches(grpc.ServiceCall call, Empty request) {
    print('streamBranches');
    return _controllerResponseBranches.stream;
  }

  @override
  Future<State> addBranch(grpc.ServiceCall call, Branch request) async {
    _addBranch(request);
    _controllerResponseBranches.add(_getBranches());
    return State(status: 0);
  }

  @override
  Future<State> removeBranch(grpc.ServiceCall call, Branch request) async {
    _removeBranch(request);
    _controllerResponseBranches.add(_getBranches());
    return State(status: 0);
  }

  @override
  Future<State> updateBranch(grpc.ServiceCall call, Branch request) async {
    _updateBranch(request);
    _controllerResponseBranches.add(_getBranches());
    return State(status: 0);
  }
}

class Server {
  Future<void> run() async {
    final server = grpc.Server([HogwartsService()]);
    await server.serve(port: 5555);
    print('Serving on the port: ${server.port}');
  }
}

Houses _getHouses(int branchId) {
  final houses = schoolDb.branches
      .firstWhere(
        (element) => element.id == branchId,
        orElse: () => BranchModel(id: -1),
      )
      .houses;
  return Houses(branchId: branchId, houses: houses);
}

void _updatePoints(int branchId, int houseId, int points) {
  final house = schoolDb.branches
      .firstWhere(
        (element) => element.id == branchId,
        orElse: () => BranchModel(id: -1),
      )
      .houses
      .firstWhere((house) => house.id == houseId);
  if (house.points + points > 0) {
    house.points += points;
  } else {
    house.points = 0;
  }
}

Branches _getBranches() {
  return Branches()
    ..branches.addAll(
      schoolDb.branches.map(
        (branch) => Branch(
          id: branch.id,
          name: branch.name,
        ),
      ),
    );
}

void _addBranch(Branch branch) {
  int id = 0;
  if (schoolDb.branches.isNotEmpty) {
    id = schoolDb.branches.last.id + 1;
  }

  var newBranch = BranchModel(id: id, name: branch.name)
    ..houses.addAll(makeHouses());

  schoolDb.branches.add(newBranch);
}

void _removeBranch(Branch branch) {
  schoolDb.branches.removeWhere((element) => element.id == branch.id);
}

void _updateBranch(Branch branch) {
  schoolDb.branches.firstWhere((element) => element.id == branch.id).name =
      branch.name;
}
