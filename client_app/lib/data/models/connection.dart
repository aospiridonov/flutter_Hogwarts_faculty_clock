import 'package:freezed_annotation/freezed_annotation.dart';

part 'connection.freezed.dart';

typedef Connections = List<Connection>;

@freezed
class Connection with _$Connection {
  const factory Connection(
      {required int timestamp,
      required Map<String, String> info}) = _Connection;
}
