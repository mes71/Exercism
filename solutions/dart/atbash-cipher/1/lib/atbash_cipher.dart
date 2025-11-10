class AtbashCipher {
  String encode(String inputs) {
    var inputRunes =
        inputs.toLowerCase().replaceAll(RegExp(r'[^a-z0-9]'), '').runes;
    var encodedRunes = chunked(inputRunes.map((e) {
      if (e >= 49 && e <= 57) {
        return e;
      }
      return 122 - (e - 97);
    }), 5);

    return encodedRunes.map((e) => String.fromCharCodes(e)).join(' ');
  }

  String decode(String inputs) {
    var inputRunes = inputs.toLowerCase().replaceAll(' ', '').runes;
    var encodedRunes = inputRunes.map((e) {
      if (e >= 49 && e <= 57) {
        return e;
      }
      return 97 + (122 - e);
    });
    return String.fromCharCodes(encodedRunes);
  }
}

List<List<T>> chunked<T>(Iterable<T> iterable, int chunkSize) {
  final List<List<T>> chunks = [];
  for (var i = 0; i < iterable.length; i += chunkSize)
    chunks.add(
      iterable.skip(i).take(chunkSize).toList(),
    );

  return chunks;
}
