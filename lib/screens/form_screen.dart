import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final TextEditingController idadeController = TextEditingController();

  String objetivoSelecionado = 'Hipertrofia';
  String nivelSelecionado = 'Iniciante';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dados do Treino')),
      body: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Text(
              'Preencha suas informações',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 24),

            // IDADE
            TextField(
              controller: idadeController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                labelText: 'Idade',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 24),

            // OBJETIVO
            DropdownButtonFormField<String>(
              value: objetivoSelecionado,
              items: const [
                DropdownMenuItem(
                  value: 'Hipertrofia',
                  child: Text('Hipertrofia'),
                ),
                DropdownMenuItem(
                  value: 'Emagrecimento',
                  child: Text('Emagrecimento'),
                ),
                DropdownMenuItem(value: 'Força', child: Text('Força')),
              ],
              onChanged: (value) {
                setState(() {
                  objetivoSelecionado = value!;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Objetivo',
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 24),

            // NÍVEL
            DropdownButtonFormField<String>(
              value: nivelSelecionado,
              items: const [
                DropdownMenuItem(value: 'Iniciante', child: Text('Iniciante')),
                DropdownMenuItem(
                  value: 'Intermediário',
                  child: Text('Intermediário'),
                ),
                DropdownMenuItem(value: 'Avançado', child: Text('Avançado')),
              ],
              onChanged: (value) {
                setState(() {
                  nivelSelecionado = value!;
                });
              },
              decoration: const InputDecoration(
                labelText: 'Nível',
                border: OutlineInputBorder(),
              ),
            ),

            const Spacer(),

            FilledButton(
              onPressed: () {
                // depois vamos usar esses dados
              },
              child: const Text('Continuar'),
            ),
          ],
        ),
      ),
    );
  }
}
