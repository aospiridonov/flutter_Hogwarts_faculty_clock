import 'package:grpc/grpc.dart';
import 'package:proto/generated/hogwarts.pbgrpc.dart';
import 'package:proto/generated/hogwarts.pb.dart' as proto;
import 'dart:async';
import 'dart:io' show Platform;

class GrpcDumbledoreService {
  late final HogwartsClient stub;
  late final ClientChannel channel;

  late final StreamController<proto.Connection> _controllerConnections;

  GrpcDumbledoreService() {
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

    _controllerConnections = StreamController<proto.Connection>.broadcast();
    _controllerConnections.addStream(stub.streamConnections(proto.Empty()));
  }

  Stream<Connection> get connections => _controllerConnections.stream;

  Future<Connections> getConnections() async {
    return await stub.getConnections(Empty());
  }

  Future<void> dispose() async {
    await channel.shutdown();
    await _controllerConnections.close();
  }
}
