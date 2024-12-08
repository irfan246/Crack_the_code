import 'dart:math';

class GameData {
  static final Random _random = Random();

  static List<int> generateCorrectNumbers() {
    return List.generate(3, (_) => _random.nextInt(9) + 1);
  }

  static List<int> generateAllNumbers(List<int> correctNumbers) {
    List<int> allNumbers = List.from(correctNumbers);

    while (allNumbers.length < 9) {
      int randomNumber = _random.nextInt(9) + 1;
      if (!allNumbers.contains(randomNumber)) {
        allNumbers.add(randomNumber);
      }
    }
    allNumbers.shuffle();
    return allNumbers;
  }

  static Map<String, dynamic> generateSafe() {
    final correctNumbers = generateCorrectNumbers();
    final targetSum = correctNumbers.reduce((a, b) => a + b);

    return {
      'targetSum': targetSum,
      'correctNumbers': correctNumbers,
      'allNumbers': generateAllNumbers(correctNumbers),
    };
  }

  static List<Map<String, dynamic>> generateSafes([int count = 4]) {
    return List.generate(count, (_) => generateSafe());
  }
}
