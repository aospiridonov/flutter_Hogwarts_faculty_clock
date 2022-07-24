part of 'connections_bloc.dart';

@freezed
class ConnectionsEvent with _$ConnectionsEvent {
  const factory ConnectionsEvent.fetch() = ConnectionsEventFetch;
  const factory ConnectionsEvent.append(Connection connection) =
      ConnectionsEventAppend;
}
