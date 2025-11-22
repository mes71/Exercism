import 'dart:math';

class DifferenceOfSquares {
  int squareOfSum(int input) {
    if (input <= 1) {
      return 1;
    }
    return pow(sumNumbers(input), 2).toInt();
  }

  int sumNumbers(int input) {
    if (input <= 1) {
      return 1;
    }
    return input + sumNumbers(input - 1);
  }

  int sumOfSquares(int input) {
    if (input <= 1) {
      return 1;
    }
    return input * input + sumOfSquares(input - 1);
  }

  int differenceOfSquares(int input) {
    return squareOfSum(input) - sumOfSquares(input);
  }
}
