import 'package:flutter/material.dart';
import 'package:teste/modules/calc/widgets/display.dart';
import 'package:teste/modules/calc/widgets/keyboard.dart';

class Calc extends StatelessWidget {
  const Calc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: const [
            Display(),
            Keyboard(),
          ],
        ));
  }
}
