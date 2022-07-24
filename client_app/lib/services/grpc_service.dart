import 'package:grpc/service_api.dart';
import 'package:proto/generated/hogwarts.pbgrpc.dart';

class GrpcSchoolService {
  late final HogwartsClient stub;
  late final ClientChannel channel;
}
