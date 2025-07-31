import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';

class AnimatedCounter extends StatelessWidget {
  final double lastNumber;

  const AnimatedCounter({super.key, required this.lastNumber});

  @override
  Widget build(BuildContext context) {
    return AnimatedFlipCounter(
      value: lastNumber,
      fractionDigits: 0,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
      textStyle: const TextStyle(fontSize: 100, fontWeight: FontWeight.bold),
    );
  }
}
