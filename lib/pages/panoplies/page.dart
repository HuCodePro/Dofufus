import 'package:flutter/material.dart';

class PanopliesPage extends StatelessWidget {
  const PanopliesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Panoplies Dofus Unity'),
        backgroundColor: const Color.fromARGB(255, 160, 204, 0),
      ),
      body: const Center(
        child: Text(
          'Bienvenue sur la page des Panoplies !',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
