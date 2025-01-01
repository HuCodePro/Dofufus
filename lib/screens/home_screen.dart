import 'package:dofufus/components/cards/cards.dart';
import 'package:dofufus/components/drawer/drawer.dart';
import 'package:dofufus/pages/farm/page.dart';
import 'package:dofufus/pages/items/page.dart';
import 'package:dofufus/pages/panoplies/page.dart';
import 'package:dofufus/pages/quetes/page.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dofufus'),
        
      ),
      drawer: const DrawerCompo(), // ddrawer ici
      body: GridView.count(
        crossAxisCount: 2, // 2 par ligne
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: const EdgeInsets.all(10),
        children: [
          Cards(
            title: 'Logo',
            subtitle: 'Items',
            color: const Color.fromARGB(255, 233, 76, 3),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const ItemsPage(), // route page items
              ),
            ),
          ),
          Cards(
            title: 'Logo',
            subtitle: 'Farm',
            color: const Color.fromARGB(255, 56, 142, 60),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FarmPage(), // route page farm
              ),
            ),
          ),
          Cards(
            title: 'Logo',
            subtitle: 'Quêtes',
            color: const Color.fromARGB(255, 117, 86, 0),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const QuetesPage(), // route page quêtes
              ),
            ),
          ),
          Cards(
            title: 'Logo',
            subtitle: 'Panoplies',
            color: const Color.fromARGB(255, 216, 173, 55),
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
