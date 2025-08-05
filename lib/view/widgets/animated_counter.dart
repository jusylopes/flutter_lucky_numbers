import 'package:animated_flip_counter/animated_flip_counter.dart';
import 'package:flutter/material.dart';

class AnimatedCounter extends StatelessWidget {
  final int? lastNumber;
  const AnimatedCounter({super.key, this.lastNumber});

  @override
  Widget build(BuildContext context) {
    return AnimatedFlipCounter(
      value: lastNumber ?? 0,
      fractionDigits: 0,
      duration: const Duration(milliseconds: 600),
      curve: Curves.easeInOut,
      textStyle: Theme.of(context).textTheme.titleLarge,
    );
  }
}
