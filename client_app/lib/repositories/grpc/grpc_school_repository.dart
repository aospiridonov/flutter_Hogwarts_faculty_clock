import 'package:client_app/data/models/models.dart';
import 'package:client_app/repositories/school_repository.dart';
import 'package:client_app/services/grpc_hogwarts_service.dart';
import 'package:proto/generated/hogwarts.pb.dart' as proto;

class GrpcSchoolRepository implements SchoolRepository {
  late final GrpcHogwartsService _service;
  late final Stream<proto.Branches> _stream;

  GrpcSchoolRepository() {
    _service = GrpcHogwartsService.instance;
    _stream = _service.branches;
  }

  @override
  Future<Branch> getBranch(int id) async {
    await _service.connect();
    //_service.fetchBranch(id)
    return Branch(
      id: id,
      name: 'Test',
    );
  }

  @override
  Future<void> dispose() async {
    _service.dispose();
  }

  @override
  Stream<Branches> get stream async* {
    await for (var protoBranches in _stream) {
      yield _fromProto(protoBranches);
    }
  }

  @override
  Future<Branches> fetch() async {
    return _fromProto(await _service.fetchBranches());
  }

  Branches _fromProto(proto.Branches protoBranches) {
    return protoBranches.branches.map((protoBranch) {
      return Branch(id: protoBranch.id, name: protoBranch.name);
    }).toList();
  }
}
