import 'package:dofufus/components/cards/cards.dart';
import 'package:flutter/material.dart';
import 'package:dofufus/components/generic/generic_page.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accueil - Dofufus'),
        backgroundColor: const Color.fromARGB(255, 160, 204, 0),
      ),
      body: GridView.count(
        crossAxisCount: 2, // 2 Cards par ligne
        crossAxisSpacing: 10, // Espacement horizontal entre les Cards
        mainAxisSpacing: 10, // Espacement vertical entre les Cards
        padding: const EdgeInsets.all(10), // Marges autour de la grille
        children: [
          Cards(
            title: 'Meilleurs Items',
            color: const Color.fromARGB(255, 160, 204, 0),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GenericPage(
                  title: 'Meilleurs Items',
                  content: 'Bienvenue sur la page des Meilleurs items !',
                  appBarColor: Color.fromARGB(255, 160, 204, 0),
                ),
              ),
            ),
          ),
          Cards(
            title: 'Farm Zones',
            color: const Color.fromARGB(255, 56, 142, 60),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const GenericPage(
                  title: 'Farm Zones',
                  content: 'Bienvenue sur la page des zones de farm !',
                  appBarColor: Color.fromARGB(255, 56, 142, 60),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
