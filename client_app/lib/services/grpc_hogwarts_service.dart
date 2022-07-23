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

  late final StreamController<proto.BranchID> _controllerRequestHouses;
  late final StreamController<proto.Houses> _controllerResponseHouses;

  late final StreamController<proto.Branches> _controllerResponseBranches;

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

    _controllerResponseHouses = StreamController<proto.Houses>.broadcast();
    _controllerResponseHouses.addStream(stub.streamHouses(proto.BranchID()));

    _controllerRequestHouses = StreamController<proto.BranchID>.broadcast();
    stub.fetchHouses(_controllerRequestHouses.stream);

    _controllerResponseBranches = StreamController<proto.Branches>.broadcast();
    _controllerResponseBranches.addStream(stub.streamBranches(proto.Empty()));
/*
    _controllerRequestHouses = StreamController<proto.BranchID>.broadcast();
    stub.fetchHouses(_controllerRequestHouses.stream);
    */
  }

  Stream<Houses> get houses => _controllerResponseHouses.stream;
  Stream<Branches> get branches => _controllerResponseBranches.stream;

  //Stream<Houses> get houses => stub.streamHouses(proto.BranchID());

  void fetchBranch(int branchId) {
    _controllerRequestHouses.add(proto.BranchID(id: branchId));
  }

  Future<Branches> fetchBranches() {
    return stub.fetchBranches(Empty());
  }

  Future<void> connect() async {
    await stub.connect(Empty());
  }

  Future<void> updatePoints(int branchId, int houseId, int points) async {
    await stub.updatePoints(
      UpdateHousePointsRequest(
        branchId: branchId,
        houseId: houseId,
        points: points,
      ),
    );
    _controllerRequestHouses.add(proto.BranchID(id: branchId));
  }

  Future<void> dispose() async {
    //TODO: Fix dispose
    //await channel.shutdown();
    //await _controllerRequestHouses.close();
    //await _controllerResponseHouses.close();
  }
}
