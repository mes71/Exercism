class ArmstrongNumbers {
  bool isArmstrongNumber(String input) {
    List<BigInt> digits = input.split('').map(BigInt.parse).toList();
    int power = input.length;
    BigInt sum = BigInt.zero;

    for (BigInt item in digits) {
      sum += item.pow(power);
    }

    return sum == BigInt.parse(input);
  }
}
