import 'package:flutter/cupertino.dart';
import 'package:teste/modules/calc/widgets/button.dart';

const int colorRed = 0xFFDD4545;
const int colorBlue = 0xFF578DD9;
const int colorDark = 0xFF373E61;
const int colorWhite = 0xFFEDF2FA;
const int colorGray = 0xFFDAE1ED;

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
                buttomText: '.'),
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
