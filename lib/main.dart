import 'package:flutter/material.dart';
import 'core/app_theme.dart';
import 'screens/home_screen.dart';
import 'form_screen.dart';

void main() {
  runApp(const FormaFitApp());
}

class FormaFitApp extends StatelessWidget {
  const FormaFitApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    FilledButton(
  onPressed: () {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => const FormScreen()),
    );
  },
  child: const Text('Criar meu treino'),
  );
}
