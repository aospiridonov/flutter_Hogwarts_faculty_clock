import 'dart:async';

import 'package:grpc/grpc.dart';
import 'package:proto/generated/hogwarts.pbgrpc.dart';

class HogwartsTerminalClient {
  late final ClientChannel channel;
  late final HogwartsClient stub;
  //late final StreamController<BranchID> _controllerRequestHouses;
  //late final StreamController<Houses> _controllerResponseHouses;

  HogwartsTerminalClient() {
    channel = ClientChannel(
      '127.0.0.1',
      port: 5555,
      options: ChannelOptions(
        credentials: ChannelCredentials.insecure(),
      ),
    );

    stub = HogwartsClient(channel);
  }

  Future<void> callService() async {
    print('callService1');
    await stub.connect(Empty());
    channel.shutdown();
  }
}
