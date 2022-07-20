import 'dart:convert';
import 'dart:io';

import 'package:proto/generated/hogwarts.pb.dart';

final School schoolDb = readDb();

dynamic _getSchool() {
  final jsonString = File('db/db.json').readAsStringSync();
  return jsonDecode(jsonString);
}

School readDb() {
  final schoolMap = _getSchool();

  return School(
      id: schoolMap['id'],
      branches: (schoolMap['branches'] as List<dynamic>).map((branch) {
        //branch.
        return Branch()
          ..id = branch['id']
          ..name = branch['name']
          ..houses.addAll((branch['houses'] as List<dynamic>).map((house) {
            return House()
              ..id = house['id']
              ..points = house['points'];
          }));
      }).toList());
}
