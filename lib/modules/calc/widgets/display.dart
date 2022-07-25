import 'package:flutter/material.dart';
import 'package:teste/modules/calc/logic.dart';

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
      valueListenable: CalculatorLogic.displayedNumber,
      builder: (context, level, child) {
        return SizedBox(
          width: 368,
          height: 80,
          child: TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: CalculatorLogic.displayedNumber.value,
            ),
          ),
        );
      },
    );
  }
}
