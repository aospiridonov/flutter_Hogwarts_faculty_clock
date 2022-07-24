import 'dart:async';

import 'package:fixnum/fixnum.dart';
import 'package:grpc/grpc.dart' as grpc;

import 'package:proto/generated/hogwarts.pbgrpc.dart';
import 'package:service/db_driver.dart';

class HogwartsService extends HogwartsServiceBase {
  late final Map<String, StreamController<Houses>> _controllerHousesMap;
  //late final StreamController<Houses> _controllerResponseHouses;
  late final StreamController<Branches> _controllerResponseBranches;
  late final StreamController<Connection> _controllerConnections;
  late final Connections _connections;

  HogwartsService() {
    _controllerHousesMap = <String, StreamController<Houses>>{};
    //_controllerResponseHouses = StreamController<Houses>.broadcast();
    _controllerResponseBranches = StreamController<Branches>.broadcast();
    _controllerConnections = StreamController<Connection>.broadcast();
    _connections = Connections();
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
      print('fetchHouses ${branch.key}');
      if (!_controllerHousesMap.containsKey(branch.key)) {
        print('not containsKey');
      }
      _controllerHousesMap[branch.key]?.add(_getHouses(branch.id));
    }
    print('end fetchHouses');
    return Empty();
  }

  @override
  Stream<Houses> streamHouses(grpc.ServiceCall call, BranchID request) {
    print('streamHouses');
    if (!_controllerHousesMap.containsKey(request.key)) {
      print('connect streamHouses ${request.id}');
      _controllerHousesMap[request.key] = StreamController<Houses>.broadcast();
    }
    return _controllerHousesMap[request.key]!.stream;
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

  @override
  Future<Branch> getBranch(grpc.ServiceCall call, BranchID request) async {
    return _getBranch(request.id);
  }

  @override
  Future<Empty> connect(grpc.ServiceCall call, Connection request) async {
    print('connect');
    int val = DateTime.now().millisecondsSinceEpoch;
    request.timestamp = Int64(val);

    _connections.infos.add(request);
    _controllerConnections.add(request);
    return Empty();
  }

  @override
  Future<Connections> getConnections(
      grpc.ServiceCall call, Empty request) async {
    print('getConnections');
    return _connections;
  }

  @override
  Stream<Connection> streamConnections(grpc.ServiceCall call, Empty request) {
    return _controllerConnections.stream;
  }
}

class Server {
  late final grpc.Server _server;
  Future<void> run() async {
    _server = grpc.Server([HogwartsService()]);
    //TODO: add interceptor
    await _server.serve(port: 5555);
    print('Serving on the port: ${_server.port}');
  }
}

Branch _getBranch(int branchId) {
  final branch = schoolDb.branches.firstWhere(
    (element) => element.id == branchId,
    orElse: () => BranchModel(id: -1),
  );
  return Branch(id: branch.id, name: branch.name);
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
  print(newBranch);
  schoolDb.branches.add(newBranch);
}

void _removeBranch(Branch branch) {
  schoolDb.branches.removeWhere((element) => element.id == branch.id);
}

void _updateBranch(Branch branch) {
  schoolDb.branches.firstWhere((element) => element.id == branch.id).name =
      branch.name;
}

extension KeyBranchID on BranchID {
  String get key => id.toString();
}
