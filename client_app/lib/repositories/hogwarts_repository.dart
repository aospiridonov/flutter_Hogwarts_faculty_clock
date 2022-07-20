import 'package:client_app/data/models/models.dart';

//
abstract class HogwartsRepository {
  Future<HogwartsBranch> getBranch(int id);
}
