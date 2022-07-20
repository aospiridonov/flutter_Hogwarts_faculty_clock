import 'package:grpc/grpc.dart' as grpc;
import 'package:grpc/service_api.dart';
import 'package:proto/generated/hogwarts.pbgrpc.dart';
import 'package:service/db_driver.dart';

class HogwartsService extends HogwartsServiceBase {
  @override
  Future<School> getSchool(ServiceCall call, GetSchoolRequest request) async {
    return schoolDb; //schoolDb;
  }
}

class Server {
  Future<void> run() async {
    print(schoolDb);
    // add grpc connection
    final server = grpc.Server([HogwartsService()]);
    await server.serve(port: 5555);
    print('Serving on the port: ${server.port}');
  }
}
