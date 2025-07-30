import 'package:flutter/material.dart';
import 'package:flutter_lucky_numbers/utils/app_assets.dart';
import 'package:flutter_lucky_numbers/view/view_model/home_view_model.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final model = context.watch<HomeViewModel>();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Números da Sorte',
          textAlign: TextAlign.center,
          maxLines: 2,
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
          child: Column(
            spacing: 16,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                model.lastNumber,
                style: const TextStyle(
                  fontSize: 100,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: model.onButtonPressed,
                style: ElevatedButton.styleFrom(),
                child: Text(model.isMaxReached ? 'REINICIAR' : 'SORTEAR'),
              ),
              Text(
                'Já sorteados:',
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              Text(
                model.numbers.join(', '),
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
