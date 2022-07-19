part of 'hogwarts_bloc.dart';

@freezed
class HogwartsEvent with _$HogwartsEvent {
  const factory HogwartsEvent.fetch({required int id}) = HogwartsEventFetch;
}
