import 'package:flutter/material.dart';

class FarmPage extends StatelessWidget {
  const FarmPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Farm Dofus Unity',
            style: TextStyle(
            color: Colors.white, 
          ),),
                shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(15), 
            bottomRight: Radius.circular(15),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 56, 142, 60),
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
