import 'dart:convert';
import 'dart:io';

import 'package:proto/generated/hogwarts.pb.dart';

SchoolModel schoolDb = _readDb();

dynamic _getSchool() {
  final jsonString = File('db/db.json').readAsStringSync();
  return jsonDecode(jsonString);
}

SchoolModel _readDb() {
  final schoolMap = _getSchool();

  return SchoolModel(
      id: schoolMap['id'],
      branches: (schoolMap['branches'] as List<dynamic>).map((branch) {
        //branch.
        return BranchModel()
          ..id = branch['id']
          ..name = branch['name']
          ..houses.addAll((branch['houses'] as List<dynamic>).map((house) {
            return House()
              ..id = house['id']
              ..points = house['points'];
          }));
      }).toList());
}

List<House> makeHouses() {
  return List<House>.generate(4, (index) => House(id: index, points: 0));
}
