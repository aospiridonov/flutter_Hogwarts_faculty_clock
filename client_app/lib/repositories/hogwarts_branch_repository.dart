import 'package:client_app/data/models/models.dart';

abstract class HogwartsBranchRepository {
  Stream<Houses> get stream;
  Future<void> fetch();
  Future<void> dispose();
}
