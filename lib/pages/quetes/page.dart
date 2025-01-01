import 'package:flutter/material.dart';

class QuetesPage extends StatelessWidget {
  const QuetesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Quêtes Dofus Unity',
            style: TextStyle(
            color: Colors.white,
          ),),
                shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15), 
            bottomRight: Radius.circular(15), 
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 117, 86, 0),
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
