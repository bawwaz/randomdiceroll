import 'package:flutter/material.dart';
import 'GradientContainer.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          body: GradientContainer(
        colors: const [
          Color.fromARGB(255, 28, 28, 28),
          Color.fromARGB(255, 35, 63, 79),
        ],
      )),
    ),  
  );
}
