import 'package:client_app/data/models/models.dart';

abstract class BranchRepository {
  Stream<Houses> get stream;
  Future<void> fetch();
  Future<void> dispose();
}
