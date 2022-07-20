import 'package:grpc/grpc.dart';
import 'package:proto/generated/hogwarts.pbgrpc.dart';

import 'hogwarts_service.dart';

const port = 5555;

class GrpcHogwartsService implements HogwartsService {
  late final HogwartsClient stub;
  late final ClientChannel channel;
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
  }

  Future<School> getSchool() async {
    final school = await stub.getSchool(GetSchoolRequest());
    print('Received school: $school');
    return school;
  }
}
