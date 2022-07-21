abstract class HouseRepository {
  Future<void> increment(int points);
  Future<void> decrement(int points);
  Future<int> get total;
  Future<int> get points;

  Stream<List<int>> get stream;
  Future<void> fetch();

  Future<void> close();
}
