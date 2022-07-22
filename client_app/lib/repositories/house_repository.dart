abstract class HouseRepository {
  Future<void> increment(int points);
  Future<void> decrement(int points);

  Stream<List<int>> get stream;
  Future<void> fetch();

  Future<void> dispose();
}
