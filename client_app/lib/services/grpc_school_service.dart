import 'package:grpc/grpc.dart';
import 'package:proto/generated/hogwarts.pbgrpc.dart';
import 'package:proto/generated/hogwarts.pb.dart' as proto;
import 'dart:async';
import 'dart:io' show Platform;

class GrpcSchoolService {
  late final HogwartsClient stub;
  late final ClientChannel channel;

  late final StreamController<proto.Branches> _controllerResponseBranches;

  GrpcSchoolService() {
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

    _controllerResponseBranches = StreamController<proto.Branches>.broadcast();
    _controllerResponseBranches.addStream(stub.streamBranches(proto.Empty()));
  }

  Stream<Branches> get branches => _controllerResponseBranches.stream;

/*
  void fetchBranch(int branchId) {
    _controllerRequestHouses.add(proto.BranchID(id: branchId));
  }
*/

  Future<void> addBranch(Branch branch) async {
    await stub.addBranch(branch);
  }

  Future<void> removeBranch(Branch branch) async {
    await stub.removeBranch(branch);
  }

  Future<void> updateBranch(Branch branch) async {
    await stub.updateBranch(branch);
  }

  Future<Branches> fetchBranches() {
    return stub.fetchBranches(Empty());
  }

  Future<void> connect() async {
    await stub.connect(Empty());
  }

  Future<void> dispose() async {
    await channel.shutdown();
    await _controllerResponseBranches.close();
  }
}
