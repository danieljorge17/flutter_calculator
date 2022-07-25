import 'package:flutter/material.dart';
import 'package:teste/modules/calc/logic.dart';

class ButtomCalc extends StatelessWidget {
  const ButtomCalc({
    required this.colorText,
    required this.colorBackground,
    required this.buttomText,
    this.isButtomZero = false,
    Key? key,
  }) : super(key: key);

  final int colorText;
  final int colorBackground;
  final String buttomText;
  final bool isButtomZero;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          width: isButtomZero ? 176 : 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Color(colorBackground),
          ),
          child: TextButton(
            onPressed: () {
              CalculatorLogic.processInput(buttomText);
            },
            style: TextButton.styleFrom(padding: const EdgeInsets.all(16)),
            child: Text(
              buttomText,
              style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Montserrat',
                  color: Color(colorText)),
            ),
          ),
        ),
      ),
    );
  }
}
