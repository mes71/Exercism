class SpaceAge {
  Map<String, double> orbitalPeriods = {
    'Mercury': 0.2408467,
    'Venus': 0.61519726,
    'Earth': 1.0,
    'Mars': 1.8808158,
    'Jupiter': 11.862615,
    'Saturn': 29.447498,
    'Uranus': 84.016846,
    'Neptune': 164.79132,
  };

  double age({required String planet, required int seconds}) {
    double earthAge = seconds / 31557600;
    String planetAge =
        (earthAge / (orbitalPeriods[planet] ?? 1)).toStringAsFixed(2);
    return double.parse(planetAge);
  }
}
