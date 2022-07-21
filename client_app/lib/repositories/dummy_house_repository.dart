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
  Future<void> decrement(int points) async {
    var house = await _storage.getHouse(branchId: branchId, id: houseId);
    points = house.points - points;
    return _storage.setHouse(
      branchId: branchId,
      id: houseId,
      house: house.copyWith(
        points: (points > 0) ? points : 0,
      ),
    );
  }

  @override
  Future<void> increment(int points) async {
    var house = await _storage.getHouse(branchId: branchId, id: houseId);
    return _storage.setHouse(
      branchId: branchId,
      id: houseId,
      house: house.copyWith(
        points: house.points + points,
      ),
    );
  }

  @override
  Future<int> get total async {
    final houses = await _storage.getHouses(branchId: branchId);
    return houses.fold<int>(0, (p, e) => p + e.points);
  }

  @override
  Future<int> get points async {
    final house = await _storage.getHouse(
      branchId: branchId,
      id: houseId,
    );
    return house.points;
  }

  @override
  // TODO: implement stream
  Stream<List<int>> get stream => throw UnimplementedError();
  
  @override
  Future<void> fetch() {
    // TODO: implement fetch
    throw UnimplementedError();
  }
}
