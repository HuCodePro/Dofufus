import 'package:flutter/material.dart';

class PanopliesPage extends StatelessWidget {
  const PanopliesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Panoplies Dofus Unity',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15), 
            bottomRight: Radius.circular(15), 
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 216, 173, 55),
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
