import 'package:flutter/material.dart';
import 'package:flutter_lucky_numbers/utils/app_colors.dart';

abstract class AppTheme {
  static ThemeData get defaultTheme => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: AppColors.primary,
    fontFamily: 'pixel',
    textTheme: _buildTextTheme(),
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      toolbarHeight: 80,
    ),
  );

  static TextTheme _buildTextTheme() {
    return const TextTheme(
      titleLarge: TextStyle(
        fontSize: 115,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
      titleMedium: TextStyle(
        fontSize: 32.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
        height: 1.5,
      ),
      titleSmall: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }
}
