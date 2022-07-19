import 'package:client_app/data/models/models.dart';

abstract class HogwartsBranchRepository {
  List<House> getHouses();
  House getHouse({required int houseId});
}
