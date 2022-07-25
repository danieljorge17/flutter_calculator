import 'package:flutter/cupertino.dart';

class CalculatorLogic {
  static final displayedNumber = ValueNotifier('0');

  static String lastOperator = '';
  static double lastNumber = 0;
  static bool binaryOperationRequested = false;

  static bool isNumber(var number) {
    if ((double.tryParse(number) != null)) {
      return true;
    }
    return false;
  }

  static bool isOperator(String userInput) {
    if ((userInput == '+') ||
        (userInput == '/') ||
        (userInput == '-') ||
        (userInput == 'x')) {
      return true;
    }
    return false;
  }

  static double operation(
      String operator, double firstNumber, double secondNumber) {
    if (operator == '+') {
      return firstNumber + secondNumber;
    } else if (operator == '/') {
      return firstNumber / secondNumber;
    } else if (operator == '-') {
      return firstNumber - secondNumber;
    } else if (operator == 'x') {
      return firstNumber * secondNumber;
    } else {
      return 0;
    }
  }

  static void processInput(String userInput) {
    if (isNumber(userInput)) {
      if (binaryOperationRequested == true) {
        lastNumber = double.parse(displayedNumber.value);
        displayedNumber.value = userInput;
        binaryOperationRequested = false;
      } else if (displayedNumber.value == '0') {
        displayedNumber.value = userInput;
      } else {
        displayedNumber.value = displayedNumber.value + userInput;
      }
    }

    if (isOperator(userInput)) {
      binaryOperationRequested = true;
      lastOperator = userInput;
    }

    if (((userInput == '.') && (displayedNumber.value == '0')) ||
        ((userInput == '.') && (binaryOperationRequested == true)) ||
        ((userInput == '.') && !(displayedNumber.value.contains('.')))) {
      displayedNumber.value = displayedNumber.value + userInput;
    }

    if (userInput == 'AC') {
      displayedNumber.value = '0';
      lastNumber = 0;
      lastOperator = '';
      binaryOperationRequested = false;
    }

    // TODO: Fazer que ao clicar no operador novamente ele opera com o resultado em tela.

    if (userInput == '=') {
      double temp = double.parse(displayedNumber.value);
      displayedNumber.value = operation(
              lastOperator, lastNumber, double.parse(displayedNumber.value))
          .toString();
      lastNumber = temp;
      lastOperator = '';
      binaryOperationRequested = false;
    }

    if (userInput == '%') {
      displayedNumber.value =
          (double.parse(displayedNumber.value) / 100).toString();
    }

    // TODO: Implementar botão de +/-
    if (userInput == '+/-') {
      return;
    }

    return;
  }
}
