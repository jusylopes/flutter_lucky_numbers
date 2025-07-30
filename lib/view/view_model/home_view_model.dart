import 'package:flutter/material.dart';
import 'package:flutter_lucky_numbers/core/lucky_numbers_service.dart';

class HomeViewModel extends ChangeNotifier {
  final LuckyNumberService service;

  HomeViewModel({required this.service});

  static const int maxCount = 6;
  List<int> numbers = [];
  String lastNumber = '???';
  String alert = '';

  void onButtonPressed() {
    if (numbers.length < maxCount) {
      _generateNext();
    } else {
      _resetar();
    }
    notifyListeners();
  }

  bool get isMaxReached => numbers.length >= maxCount;

  void _generateNext() {
    final n = service.nextUnique(numbers);
    numbers.add(n);
    lastNumber = n.toString();
    alert = '';
  }

  void _resetar() {
    numbers.clear();
    lastNumber = '???';
    alert = '';
  }
}
