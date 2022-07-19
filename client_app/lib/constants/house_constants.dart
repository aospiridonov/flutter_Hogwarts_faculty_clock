import 'package:flutter/material.dart';

enum House implements Comparable<House> {
  gryffindor(
    name: 'Gryffindor',
    color: Colors.red,
    image: 'Blason_Gryffondor.svg',
  ),
  hufflepuff(
    name: 'Hufflepuff',
    color: Colors.yellow,
    image: 'Coat_of_arms_Hufflepuff.svg',
  ),
  ravenclaw(
    name: 'Ravenclaw',
    color: Colors.blue,
    image: 'Blason_Serdaigle.svg',
  ),
  slytherin(
    name: 'Slytherin',
    color: Colors.green,
    image: 'Blason_Serpentard.svg',
  );

  const House({
    required this.name,
    required this.color,
    required this.image,
  });
  final String name;
  final Color color;
  final String image;

  @override
  int compareTo(House other) => name.compareTo(other.name);
}
