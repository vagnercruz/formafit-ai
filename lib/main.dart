import 'package:flutter/material.dart';
import 'core/app_theme.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const FormaFitApp());
}

class FormaFitApp extends StatelessWidget {
  const FormaFitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FormaFit AI',
      debugShowCheckedModeBanner: false,
      theme: AppTheme.light(),
      home: const HomeScreen(),
    );
  }
}
