class WordCount {
  Map<String, int> countWords(String inputs) {
    Map<String, int> counts = new Map<String, int>();
    final wordRegex = RegExp(r"[A-Za-z0-9]+(?:'[A-Za-z0-9]+)*");
    for (final match in wordRegex.allMatches(inputs)) {
      final word = match.group(0)!.toLowerCase();
      counts[word] = (counts[word] ?? 0) + 1;
    }
    return counts;
  }
}
