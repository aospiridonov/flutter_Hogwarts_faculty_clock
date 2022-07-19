import 'package:client_app/data/models/models.dart';
import 'package:client_app/constants/house_constants.dart' as constants;

class DummyStorage {
  late final Map<int, List<House>> _map;

  DummyStorage._() {
    _setup();
  }

  static DummyStorage instance = DummyStorage._();

  List<House> getHouses({required int branchId}) {
    return _map[branchId] ?? _empty();
  }

  House getHouse({required int branchId, required int id}) {
    return _map[branchId]?[id] ?? _empty()[id];
  }

  void setHouse({
    required int branchId,
    required int id,
    required House house,
  }) {
    _map[branchId]![id] = house;
  }

  void _setup() {
    _map = <int, List<House>>{};
    for (int i = 0; i < 10; i++) {
      _map[i] = _houses;
    }
  }

  static List<House> _empty() {
    return [
      House(
        id: constants.House.gryffindor.index,
        name: constants.House.gryffindor.name,
        color: constants.House.gryffindor.color,
        image: constants.House.gryffindor.image,
        points: 0,
      ),
      House(
        id: constants.House.hufflepuff.index,
        name: constants.House.hufflepuff.name,
        color: constants.House.hufflepuff.color,
        image: constants.House.hufflepuff.image,
        points: 0,
      ),
      House(
        id: constants.House.ravenclaw.index,
        name: constants.House.ravenclaw.name,
        color: constants.House.ravenclaw.color,
        image: constants.House.ravenclaw.image,
        points: 0,
      ),
      House(
        id: constants.House.slytherin.index,
        name: constants.House.slytherin.name,
        color: constants.House.slytherin.color,
        image: constants.House.slytherin.image,
        points: 0,
      ),
    ];
  }
}

List<House> _houses = [
  House(
    id: constants.House.gryffindor.index,
    name: constants.House.gryffindor.name,
    color: constants.House.gryffindor.color,
    image: constants.House.gryffindor.image,
    points: 20,
  ),
  House(
    id: constants.House.hufflepuff.index,
    name: constants.House.hufflepuff.name,
    color: constants.House.hufflepuff.color,
    image: constants.House.hufflepuff.image,
    points: 3,
  ),
  House(
    id: constants.House.ravenclaw.index,
    name: constants.House.ravenclaw.name,
    color: constants.House.ravenclaw.color,
    image: constants.House.ravenclaw.image,
    points: 40,
  ),
  House(
    id: constants.House.slytherin.index,
    name: constants.House.slytherin.name,
    color: constants.House.slytherin.color,
    image: constants.House.slytherin.image,
    points: 40,
  ),
];
