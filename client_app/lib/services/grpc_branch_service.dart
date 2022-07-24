import 'dart:async';
import 'dart:io' show Platform;

import 'package:grpc/grpc.dart';
import 'package:proto/generated/hogwarts.pb.dart' as proto;
import 'package:proto/generated/hogwarts.pbgrpc.dart';

class GrpcBranchService {
  late final HogwartsClient stub;
  late final ClientChannel channel;

  late final StreamController<proto.BranchID> _controllerRequestHouses;
  late final StreamController<proto.Houses> _controllerResponseHouses;

  final int id; //branch id
  late final proto.BranchID _id;

  GrpcBranchService(this.id) {
    _id = proto.BranchID(id: id);

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

    _controllerResponseHouses = StreamController<proto.Houses>.broadcast();
    _controllerResponseHouses.addStream(stub.streamHouses(_id));

    _controllerRequestHouses = StreamController<proto.BranchID>.broadcast();
    stub.fetchHouses(_controllerRequestHouses.stream);
  }

  Future<void> connect() async => await stub.connect(Empty());
  Future<Branch> get branch async => await stub.getBranch(_id);
  Stream<Houses> get houses => _controllerResponseHouses.stream;
  Future<void> fetchBranch() async => _controllerRequestHouses.add(_id);

  Future<void> updatePoints(int houseId, int points) async {
    await stub.updatePoints(
      UpdateHousePointsRequest(
        branchId: id,
        houseId: houseId,
        points: points,
      ),
    );
    _controllerRequestHouses.add(_id);
  }

  Future<void> dispose() async {
    await channel.shutdown();
    await _controllerRequestHouses.close();
    await _controllerResponseHouses.close();
  }
}
