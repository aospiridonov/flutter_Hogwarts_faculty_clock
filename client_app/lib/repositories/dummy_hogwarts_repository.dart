import 'package:client_app/data/models/models.dart';
import 'package:client_app/repositories/hogwarts_repository.dart';

class DummyHogwartsRepository implements HogwartsRepository {
  @override
  HogwartsBranch getBranch(int id) {
    return const HogwartsBranch(
      id: 0,
      name: 'Test',
    );
  }
}
