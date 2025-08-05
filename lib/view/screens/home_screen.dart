import 'package:flutter/material.dart';
import 'package:flutter_lucky_numbers/utils/app_assets.dart';
import 'package:flutter_lucky_numbers/view/view_model/home_view_model.dart';
import 'package:flutter_lucky_numbers/view/widgets/animated_counter.dart';
import 'package:flutter_lucky_numbers/view/widgets/box_numbers.dart';
import 'package:flutter_lucky_numbers/view/widgets/button_music.dart';
import 'package:flutter_lucky_numbers/view/widgets/button_start.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<HomeViewModel>();

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppAssets.background,
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),
          SafeArea(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: Text(
                    'Numeros da Sorte',
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 100),
                Visibility(
                  visible: model.lastNumber != null,
                  replacement: Text(
                    '???',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  child: AnimatedCounter(lastNumber: model.lastNumber),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.06),
                BoxNumbers(numbers: model.numbers),
                SizedBox(height: MediaQuery.of(context).size.height * 0.13),
                ButtonStart(onPressed: model.onButtonPressed),
              ],
            ),
          ),
        ],
      ),
      extendBody: true,
      floatingActionButtonLocation: FloatingActionButtonLocation.miniEndDocked,
      floatingActionButton: ButtonMusic(),
    );
  }
}
