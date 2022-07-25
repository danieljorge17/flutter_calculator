import 'package:flutter/material.dart';
import 'package:teste/modules/calc/calculator_page.dart';

// =================> Global Variables <================= //

// =================> Main <================= //

void main() {
  runApp(const MyApp());
}

// =================> Frontend <================= //

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Calc(),
      debugShowCheckedModeBanner: false,
    );
  }
}
