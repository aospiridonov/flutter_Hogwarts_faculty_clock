abstract class HouseRepository {
  Future<void> increment(int points);
  Future<void> decrement(int points);
  Future<int> get total;
  Future<int> get points;
}
