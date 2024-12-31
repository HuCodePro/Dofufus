import 'package:flutter/material.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Items Dofus Unity'),
        backgroundColor: const Color.fromARGB(255, 160, 204, 0),
      ),
      body: const Center(
        child: Text(
          'Bienvenue sur la page des items de Dofus Unity !',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
