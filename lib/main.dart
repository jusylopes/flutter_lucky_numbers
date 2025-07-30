import 'package:flutter/material.dart';
import 'package:flutter_lucky_numbers/core/lucky_numbers_service.dart';
import 'package:flutter_lucky_numbers/utils/app_theme.dart';
import 'package:flutter_lucky_numbers/view/screens/home_screen.dart';
import 'package:flutter_lucky_numbers/view/view_model/home_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(service: LuckyNumberService()),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.defaultTheme,
        home: HomeScreen(),
      ),
    );
  }
}
