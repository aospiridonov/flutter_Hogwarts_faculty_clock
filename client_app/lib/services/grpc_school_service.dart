import 'package:grpc/grpc.dart';
import 'package:proto/generated/hogwarts.pbgrpc.dart';
import 'package:proto/generated/hogwarts.pb.dart' as proto;
import 'dart:async';
import 'dart:io' show Platform;

import 'package:device_info_plus/device_info_plus.dart';

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
    connect();
  }

  Stream<Branches> get branches => _controllerResponseBranches.stream;

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
    final deviceInfoPlugin = DeviceInfoPlugin();
    final deviceInfo = await deviceInfoPlugin.deviceInfo;
    final map = deviceInfo.toMap();
    final val = map.map<String, String>((key, value) {
      return MapEntry(key, value.toString());
    });
    await stub.connect(Connection(info: val));
  }

  Future<void> dispose() async {
    await channel.shutdown();
    await _controllerResponseBranches.close();
  }
}
