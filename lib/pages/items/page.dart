import 'package:flutter/material.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Items Dofus Unity',
            style: TextStyle(
            color: Colors.white,
          ),),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15), 
            bottomRight: Radius.circular(15), 
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 233, 76, 3),
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
