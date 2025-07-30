import 'dart:math';

class LuckyNumberService {
  final _random = Random();

  int nextUnique(List<int> existing) {
    int n;
    do {
      n = _random.nextInt(60) + 1;
    } while (existing.contains(n));
    return n;
  }
}
