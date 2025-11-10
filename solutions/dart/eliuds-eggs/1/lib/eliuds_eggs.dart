class EggCounter {
  int count(int input) {
    int res = 0;

    while (input > 0) {
      res += input & 1;
      input >>= 1;
    }

    return res;
  }
}
