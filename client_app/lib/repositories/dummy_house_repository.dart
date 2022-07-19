import 'dummy_storage.dart';
import 'house_repository.dart';

class DummyHouseRepository implements HouseRepository {
  late final DummyStorage _storage;

  final int branchId;
  final int houseId;

  DummyHouseRepository({
    required this.branchId,
    required this.houseId,
  }) {
    _storage = DummyStorage.instance;
  }

  @override
  void decrement(int points) {
    var house = _storage.getHouse(branchId: branchId, id: houseId);
    points = house.points - points;
    _storage.setHouse(
      branchId: branchId,
      id: houseId,
      house: house.copyWith(
        points: (points > 0) ? points : 0,
      ),
    );
  }

  @override
  void increment(int points) {
    var house = _storage.getHouse(branchId: branchId, id: houseId);
    _storage.setHouse(
      branchId: branchId,
      id: houseId,
      house: house.copyWith(
        points: house.points + points,
      ),
    );
  }

  @override
  int get total => _storage
      .getHouses(
        branchId: branchId,
      )
      .fold<int>(0, (p, e) => p + e.points);

  @override
  int get points => _storage
      .getHouse(
        branchId: branchId,
        id: houseId,
      )
      .points;
}
