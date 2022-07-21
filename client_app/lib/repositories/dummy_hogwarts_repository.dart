import 'package:client_app/data/models/models.dart';
import 'package:client_app/repositories/hogwarts_repository.dart';

class DummyHogwartsRepository implements HogwartsRepository {
  @override
  Future<HogwartsBranch> getBranch(int id) async {
    return const HogwartsBranch(
      id: 0,
      name: 'Test',
    );
  }

  @override
  Stream<Houses> getHouses(int branchId) {
    // TODO: implement getHouses
    throw UnimplementedError();
  }
}
