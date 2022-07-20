import 'package:grpc/src/server/call.dart';
import 'package:proto/generated/hogwarts.pbgrpc.dart';
import 'package:service/db_driver.dart';

class HogwartsService extends HogwartsServiceBase {
  @override
  Future<School> getSchool(ServiceCall call, GetSchoolRequest request) async {
    return schoolDb;
  }
}

class Server {
  Future<void> run() async {
    // add grpc connection
  }
}
