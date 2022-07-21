import 'package:client_app/data/models/models.dart';

abstract class HogwartsBranchRepository {
  Stream<Houses> get stream;
  Future<Houses> get houses;
  Future<House> getHouse({required int houseId});

  Future<void> fetch();

  Future<void> close();
}
