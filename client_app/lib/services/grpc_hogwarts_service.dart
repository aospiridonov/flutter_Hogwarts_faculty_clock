import 'package:grpc/grpc.dart';
import 'package:proto/generated/hogwarts.pbgrpc.dart';
import 'package:proto/generated/hogwarts.pb.dart' as proto;
import 'hogwarts_service.dart';
import 'dart:async';

const port = 5555;

class GrpcHogwartsService implements HogwartsService {
  late final HogwartsClient stub;
  late final ClientChannel channel;

  late final StreamController<proto.GetHouesRequest> _controllerHouses;
  late final StreamController<proto.Houses> _controllerHouses2;
  late final Stream<proto.Houses> _houses;

  static GrpcHogwartsService instance = GrpcHogwartsService._();
  GrpcHogwartsService._() {
    channel = ClientChannel(
      '10.0.2.2', //'127.0.0.1', //
      port: 5555,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );

    stub = HogwartsClient(channel);

    _controllerHouses = StreamController<proto.GetHouesRequest>.broadcast();
    _controllerHouses2 = StreamController<proto.Houses>.broadcast();
    //_houses = stub.getHouses(_controllerHouses.stream);
    _controllerHouses2.addStream(stub.getHouses(_controllerHouses.stream));
  }

  //Stream<Houses> get houses => _houses;
  Stream<Houses> get houses => _controllerHouses2.stream;

  Future<void> fetchBranch(int branchId) async {
    _controllerHouses.add(
      proto.GetHouesRequest(branchId: branchId),
    );
  }

  Future<School> getSchool() async {
    final school = await stub.getSchool(GetSchoolRequest());
    print('Received school: $school');
    return school;
  }

  Stream<Houses> getHouses(Stream<GetHouesRequest> stream) {
    return stub.getHouses(stream);
  }

  Future<void> updatePoints(int branchId, int houseId, int points) async {
    await stub.updatePoints(
      UpdateHousePointsRequest(
        branchId: branchId,
        houseId: houseId,
        points: points,
      ),
    );
    _controllerHouses.add(
      proto.GetHouesRequest(branchId: branchId),
    );
  }
}
