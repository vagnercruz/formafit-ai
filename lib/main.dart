import 'package:flutter/material.dart';

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
      home: const Scaffold(),
    );
  }
}
