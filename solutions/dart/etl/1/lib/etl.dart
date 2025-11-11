const Map<String, int> letterPoints = {
  'a': 1,
  'e': 1,
  'i': 1,
  'o': 1,
  'u': 1,
  'l': 1,
  'n': 1,
  'r': 1,
  's': 1,
  't': 1,
  'd': 2,
  'g': 2,
  'b': 3,
  'c': 3,
  'm': 3,
  'p': 3,
  'f': 4,
  'h': 4,
  'v': 4,
  'w': 4,
  'y': 4,
  'k': 5,
  'j': 8,
  'x': 8,
  'q': 10,
  'z': 10,
};

class Etl {
  Map<String, int> transform(Map<String, List<String>> input) {
    final Map<String, int> res = {};

    return input.entries.fold(
      res,
      (previousValue, element) {
        element.value.forEach(
          (item) => previousValue[item.toLowerCase()] = int.parse(element.key),
        );
        return previousValue;
      },
    );
  }
}
