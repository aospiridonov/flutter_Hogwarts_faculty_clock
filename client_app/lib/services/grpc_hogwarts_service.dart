import 'package:grpc/grpc.dart';
import 'package:proto/generated/hogwarts.pbgrpc.dart';
import 'package:proto/generated/hogwarts.pb.dart' as proto;
import 'hogwarts_service.dart';
import 'dart:async';
import 'dart:io' show Platform;

const port = 5555;

class GrpcHogwartsService implements HogwartsService {
  late final HogwartsClient stub;
  late final ClientChannel channel;

  late final StreamController<proto.GetHouesRequest> _controllerRequestHouses;
  late final StreamController<proto.Houses> _controllerResponseHouses;

  static GrpcHogwartsService instance = GrpcHogwartsService._();
  GrpcHogwartsService._() {
    String host = '127.0.0.1';
    if (Platform.isAndroid) {
      host = '10.0.2.2';
    }

    channel = ClientChannel(
      host, //'10.0.2.2', //
      port: 5555,
      options: const ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );

    stub = HogwartsClient(channel);

    _controllerRequestHouses =
        StreamController<proto.GetHouesRequest>.broadcast();
    _controllerResponseHouses = StreamController<proto.Houses>.broadcast();

    _controllerResponseHouses
        .addStream(stub.getHouses(_controllerRequestHouses.stream));
  }

  Stream<Houses> get houses => _controllerResponseHouses.stream;

  Future<void> fetchBranch(int branchId) async {
    _controllerRequestHouses.add(
      proto.GetHouesRequest(
        branchId: branchId,
      ),
    );
  }

  Future<School> getSchool() async {
    final school = await stub.getSchool(GetSchoolRequest());
    print('Received school: $school');
    return school;
  }

  Future<void> updatePoints(int branchId, int houseId, int points) async {
    await stub.updatePoints(
      UpdateHousePointsRequest(
        branchId: branchId,
        houseId: houseId,
        points: points,
      ),
    );
    _controllerRequestHouses.add(
      proto.GetHouesRequest(branchId: branchId),
    );
  }

  //TODO: add dispose

  Future<void> dispose() async {
    await channel.shutdown();
    await _controllerRequestHouses.close();
    await _controllerResponseHouses.close();
  }
}
