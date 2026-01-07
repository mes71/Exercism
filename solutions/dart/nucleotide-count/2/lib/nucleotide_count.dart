class NucleotideCount {
  Map<String, int> count(String input) {
    Map<int, int> res = {65: 0, 67: 0, 71: 0, 84: 0};

    for (var i in input.runes) {
      if (!res.containsKey(i)) {
        throw InvalidNucleotideException();
      }
      res[i] = res[i]! + 1;
    }

    return res
        .map((key, value) => MapEntry(String.fromCharCode(key), value));
  }
}

class InvalidNucleotideException implements Exception {}
