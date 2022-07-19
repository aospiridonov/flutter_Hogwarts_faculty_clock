import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'house.freezed.dart';

typedef Houses = List<House>;

@freezed
class House with _$House {
  const factory House({
    required int id,
    required String name,
    required Color color,
    required String image,
    required int points,
  }) = _House;
}
