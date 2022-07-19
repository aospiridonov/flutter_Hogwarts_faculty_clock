import 'package:client_app/data/models/models.dart';
import 'package:client_app/repositories/dummy_storage.dart';

import 'hogwarts_branch_repository.dart';

class DummyHogwartsBranchRepository implements HogwartsBranchRepository {
  late final DummyStorage _storage;
  final int branchId;

  DummyHogwartsBranchRepository(this.branchId) {
    _storage = DummyStorage.instance;
  }

  @override
  Future<Houses> get houses => _storage.getHouses(branchId: branchId);

  @override
  Future<House> getHouse({required int houseId}) {
    return _storage.getHouse(
      branchId: branchId,
      id: houseId,
    );
  }

  @override
  Stream<Houses> get stream => _storage.stream;
}
