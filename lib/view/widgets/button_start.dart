import 'package:flutter/material.dart';
import 'package:flutter_lucky_numbers/utils/app_assets.dart';

class ButtonStart extends StatefulWidget {
  final VoidCallback onPressed;

  const ButtonStart({super.key, required this.onPressed});

  @override
  State<ButtonStart> createState() => _ButtonStartState();
}

class _ButtonStartState extends State<ButtonStart> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 100,
      height: 100,
      child: GestureDetector(
        onTapDown: (_) => setState(() => _isPressed = true),
        onTapUp: (_) {
          setState(() => _isPressed = false);
          widget.onPressed();
        },
        child: AnimatedScale(
          scale: _isPressed ? 1.1 : 1.0,
          duration: const Duration(milliseconds: 100),
          curve: Curves.easeOut,
          child: Card(
            elevation: 1,
            color: Colors.transparent,
            shadowColor: Colors.black54,
            clipBehavior: Clip.antiAlias,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AppAssets.pixelButton),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
