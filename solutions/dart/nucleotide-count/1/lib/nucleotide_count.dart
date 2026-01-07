class NucleotideCount {
  Map<String, int> count(String input) {
    Map<int, int> nucleotideMap = {65: 0, 67: 0, 71: 0, 84: 0};

    for (var i in input.runes) {
      if (!nucleotideMap.containsKey(i)) {
        throw InvalidNucleotideException();
      }
      nucleotideMap[i] = nucleotideMap[i]! + 1;
    }

    return nucleotideMap
        .map((key, value) => MapEntry(String.fromCharCode(key), value));
  }
}

class InvalidNucleotideException implements Exception {}
