import 'package:flutter/material.dart';
import 'package:flutter_lucky_numbers/utils/app_colors.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static ThemeData get defaultTheme => ThemeData(
    useMaterial3: true,
    colorSchemeSeed: AppColors.primary,
    fontFamily: GoogleFonts.pixelifySans().fontFamily,
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
        fontSize: 46.0,
        fontWeight: FontWeight.w700,
        color: Colors.black,
        height: 0.9,
      ),
      titleMedium: TextStyle(
        fontSize: 20.0,
        fontWeight: FontWeight.w700,
        color: Colors.black,
      ),
      titleSmall: TextStyle(
        fontSize: 18.0,
        fontWeight: FontWeight.w300,
        color: Colors.black,
      ),
    );
  }
}
