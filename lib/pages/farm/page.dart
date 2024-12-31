import 'package:flutter/material.dart';

class FarmPage extends StatelessWidget {
  const FarmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Farm Dofus Unity'),
        backgroundColor: const Color.fromARGB(255, 160, 204, 0),
      ),
      body: const Center(
        child: Text(
          'Bienvenue sur la page du farm !',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
