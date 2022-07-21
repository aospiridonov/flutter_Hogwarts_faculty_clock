import 'package:client_app/data/models/models.dart';
import 'package:client_app/repositories/hogwarts_repository.dart';
import 'package:client_app/services/grpc_hogwarts_service.dart';

class GrpcHogwartsRepository implements HogwartsRepository {
  late final GrpcHogwartsService _service;

  GrpcHogwartsRepository() {
    _service = GrpcHogwartsService.instance;
  }

  @override
  Future<HogwartsBranch> getBranch(int id) async {
    final school = await _service.getSchool();
    return const HogwartsBranch(
      id: 0,
      name: 'Test',
    );
  }

  @override
  Future<void> close() async {
    _service.dispose();
  }
}
