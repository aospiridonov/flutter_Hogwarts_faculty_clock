import 'package:client_app/data/models/models.dart';

abstract class Storage {
  Future<Houses> getHouses({required int branchId});
  Future<House> getHouse({required int branchId, required int id});
  Stream<Houses> get stream;
}
