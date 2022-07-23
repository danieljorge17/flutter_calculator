import 'package:flutter/material.dart';

const int colorRed = 0xFFDD4545;
const int colorBlue = 0xFF578DD9;
const int colorDark = 0xFF373E61;
const int colorWhite = 0xFFEDF2FA;
const int colorGray = 0xFFDAE1ED;

var displayedNumber = ValueNotifier('0');

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: Calc());
  }
}

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
              // TODO: Revisar os if's
              if ((double.tryParse(buttomText) != null) ||
                  (buttomText == ',')) {
                print(displayedNumber.value);
                if ((displayedNumber.value == '0') && (buttomText != ',')) {
                  displayedNumber.value = buttomText;
                } else if ((displayedNumber.value == '0') &&
                    (buttomText == ',')) {
                  displayedNumber.value = displayedNumber.value + buttomText;
                } else if ((displayedNumber.value.contains(',')) &&
                    buttomText == ',') {
                  displayedNumber.value = displayedNumber.value;
                } else {
                  displayedNumber.value = displayedNumber.value + buttomText;
                }
              }
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

class Keyboard extends StatelessWidget {
  const Keyboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ButtomCalc(
                colorText: colorWhite,
                colorBackground: colorRed,
                buttomText: 'AC'),
            ButtomCalc(
                colorText: colorDark,
                colorBackground: colorGray,
                buttomText: '+/-'),
            ButtomCalc(
                colorText: colorDark,
                colorBackground: colorGray,
                buttomText: '%'),
            ButtomCalc(
                colorText: colorDark,
                colorBackground: colorGray,
                buttomText: '/'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ButtomCalc(
                colorText: colorDark,
                colorBackground: colorWhite,
                buttomText: '7'),
            ButtomCalc(
                colorText: colorDark,
                colorBackground: colorWhite,
                buttomText: '8'),
            ButtomCalc(
                colorText: colorDark,
                colorBackground: colorWhite,
                buttomText: '9'),
            ButtomCalc(
                colorText: colorDark,
                colorBackground: colorGray,
                buttomText: 'x'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ButtomCalc(
                colorText: colorDark,
                colorBackground: colorWhite,
                buttomText: '4'),
            ButtomCalc(
                colorText: colorDark,
                colorBackground: colorWhite,
                buttomText: '5'),
            ButtomCalc(
                colorText: colorDark,
                colorBackground: colorWhite,
                buttomText: '6'),
            ButtomCalc(
                colorText: colorDark,
                colorBackground: colorGray,
                buttomText: '-'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ButtomCalc(
                colorText: colorDark,
                colorBackground: colorWhite,
                buttomText: '1'),
            ButtomCalc(
                colorText: colorDark,
                colorBackground: colorWhite,
                buttomText: '2'),
            ButtomCalc(
                colorText: colorDark,
                colorBackground: colorWhite,
                buttomText: '3'),
            ButtomCalc(
                colorText: colorDark,
                colorBackground: colorGray,
                buttomText: '+'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            ButtomCalc(
              colorText: colorDark,
              colorBackground: colorWhite,
              buttomText: '0',
              isButtomZero: true,
            ),
            ButtomCalc(
                colorText: colorDark,
                colorBackground: colorWhite,
                buttomText: ','),
            ButtomCalc(
                colorText: colorWhite,
                colorBackground: colorBlue,
                buttomText: '='),
          ],
        ),
      ],
    );
  }
}

class Display extends StatelessWidget {
  const Display({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<String>(
      valueListenable: displayedNumber,
      builder: (context, level, child) {
        return Container(
          width: 368,
          height: 80,
          child: TextField(
            decoration: InputDecoration(
              border: const OutlineInputBorder(),
              labelText: displayedNumber.value,
            ),
          ),
        );
      },
    );
  }
}