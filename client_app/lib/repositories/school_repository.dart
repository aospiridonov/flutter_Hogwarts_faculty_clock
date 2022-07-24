import 'package:client_app/data/models/models.dart';

//
abstract class SchoolRepository {
  Future<Branch> getBranch(int id);
  Stream<Branches> get stream;
  Future<Branches> fetch();
  Future<void> dispose();

  Future<void> addBranch(Branch branch);
  Future<void> removeBranch(Branch branch);
  Future<void> updateBranch(Branch branch);
}
