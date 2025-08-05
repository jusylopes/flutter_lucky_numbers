import 'package:flutter/material.dart';
import 'package:flutter_lucky_numbers/utils/app_assets.dart';

class BoxNumbers extends StatelessWidget {
  final List<int> numbers;

  const BoxNumbers({super.key, required this.numbers});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.transparent,
      shadowColor: Colors.black54,
      clipBehavior: Clip.antiAlias,
      child: Container(
        height: 100,
        width: double.infinity,
        padding: const EdgeInsets.only(top: 32.0),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(AppAssets.pixelBox),
          ),
        ),
        child: Text(
          numbers.join('   '),
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleSmall,
        ),
      ),
    );
  }
}
