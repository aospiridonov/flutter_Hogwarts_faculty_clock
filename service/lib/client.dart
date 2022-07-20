import 'package:grpc/grpc.dart';
import 'package:proto/generated/hogwarts.pbgrpc.dart';

class HogwartsTerminalClient {
  late final ClientChannel channel;
  late final HogwartsClient stub;

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

  Future<School> getSchool() async {
    final school = await stub.getSchool(GetSchoolRequest());
    print('Received school: $school');
    return school;
  }

  Future<void> callService(GetSchoolRequest stub) async {
    await getSchool();
    await channel.shutdown();
  }
}
