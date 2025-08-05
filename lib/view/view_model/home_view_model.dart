import 'package:flutter/material.dart';
import 'package:flutter_lucky_numbers/core/lucky_numbers_service.dart';

class HomeViewModel extends ChangeNotifier {
  final LuckyNumberService service;

  HomeViewModel({required this.service});

  static const int maxCount = 6;
  List<int> numbers = [];
  int? lastNumber;

  void onButtonPressed() {
    numbers.length < maxCount ? _generateNext() : _resetar();
    notifyListeners();
  }

  bool get isMaxReached => numbers.length >= maxCount;

  void _generateNext() {
    final n = service.nextUnique(numbers);
    numbers.add(n);
    lastNumber = n;
  }

  void _resetar() {
    numbers.clear();
    lastNumber = null;
  }
}
