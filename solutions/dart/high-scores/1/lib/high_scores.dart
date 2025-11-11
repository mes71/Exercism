class HighScores {
  List<int> scores;

  HighScores(this.scores);

  int latest() => scores.last;

  int personalBest() => scores.reduce(
        (a, b) => a > b ? a : b,
      );

  List<int> personalTopThree() => scores
    ..sort((a, b) => b - a)
    ..take(3).toList();
}
