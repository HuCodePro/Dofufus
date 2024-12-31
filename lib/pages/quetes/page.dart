import 'package:flutter/material.dart';

class QuetesPage extends StatelessWidget {
  const QuetesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quêtes Dofus Unity'),
        backgroundColor: const Color.fromARGB(255, 160, 204, 0),
      ),
      body: const Center(
        child: Text(
          'Bienvenue sur la page des Quêtes !',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
