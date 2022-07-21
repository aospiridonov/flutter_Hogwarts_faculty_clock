import 'package:grpc/grpc.dart' as grpc;
import 'package:grpc/service_api.dart';
import 'package:proto/generated/hogwarts.pbgrpc.dart';
import 'package:service/db_driver.dart';

Houses _getHouses(int branchId) {
  final houses = schoolDb.branches
      .firstWhere(
        (element) => element.id == branchId,
        orElse: () => Branch(id: -1),
      )
      .houses;
  print(houses);
  return Houses(branchId: branchId, houses: houses);
}

class HogwartsService extends HogwartsServiceBase {
  @override
  Future<School> getSchool(ServiceCall call, GetSchoolRequest request) async {
    print('getSchool');
    return schoolDb; //schoolDb;
  }

  @override
  Future<House> updatePoints(
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

    return house;
  }

  @override
  Stream<Houses> getHouses(
    grpc.ServiceCall call,
    Stream<GetHouesRequest> request,
  ) async* {
    await for (var message in request) {
      yield _getHouses(message.branchId);
    }
  }
}

class Server {
  Future<void> run() async {
    print(schoolDb);
    // add grpc connection
    final server = grpc.Server([HogwartsService()]);
    await server.serve(port: 5555);
    print('Serving on the port: ${server.port}');
  }
}
