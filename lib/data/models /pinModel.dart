import 'package:flutter/material.dart';

class MyPins {
  String? imagePath;

  MyPins({this.imagePath});
}

final List<MyPins> pinList = [
  MyPins(imagePath: 'assets/images/interstellar.jpeg'),
  MyPins(imagePath: 'assets/images/batman.jpeg'),
  MyPins(imagePath: 'assets/images/seven.jpeg'),
  MyPins(imagePath: 'assets/images/whiplash.jpeg'),
];
