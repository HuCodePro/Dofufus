import 'package:dofufus/components/cards/cards.dart';
import 'package:dofufus/components/drawer/drawer.dart';
import 'package:dofufus/pages/farm/page.dart';
import 'package:dofufus/pages/items/page.dart';
import 'package:dofufus/pages/panoplies/page.dart';
import 'package:dofufus/pages/quetes/page.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dofufus'),
        elevation: 4,
        shadowColor: const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5), 
        
      ),
      drawer: const DrawerCompo(), // ddrawer ici
      body: GridView.count(
        crossAxisCount: 2, // 2 par ligne
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(10),
        children: [
          Cards(
            title: 'Items',
            color: const Color.fromARGB(255, 233, 3, 3),
            imagePath: 'assets/images/logo_items.webp',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ItemsPage(), // route page items
              ),
            ),
          ),
          Cards(
            title: 'Métier',
            color: const Color.fromARGB(255, 0, 255, 13),
            imagePath: 'assets/images/logo_metier.webp',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FarmPage(), // route page farm
              ),
            ),
          ),
          Cards(
            title: 'Quêtes',
            color: const Color.fromARGB(255, 246, 238, 0),
            imagePath: 'assets/images/logo_quetes.jpg',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const QuetesPage(), // route page quêtes
              ),
            ),
          ),
          Cards(
            title: 'Panoplies',
            color: const Color.fromARGB(255, 13, 0, 252),
            imagePath: 'assets/images/logo_pano.jpg',
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    const PanopliesPage(), // route page quêtes
              ),
            ),
          ),
        ],
      ),
    );
  }
}
