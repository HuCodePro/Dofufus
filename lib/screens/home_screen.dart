import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: _buildAppBar(),
      drawer: _buildDrawer(context),
      body: const Center(
        child: Text(
          'Bienvenue sur Dofufus !',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color.fromARGB(255, 160, 204, 0),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.menu, color: Colors.white, size: 30),
            onPressed: () => _scaffoldKey.currentState?.openDrawer(),
          ),
          const Text(
            'Dofufus',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 24,
              fontFamily: 'Roboto',
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.search, color: Colors.white),
                onPressed: () => debugPrint("Recherche"),
              ),
              const SizedBox(width: 10),
              CircleAvatar(
                radius: 20,
                backgroundColor: Colors.white,
                child: IconButton(
                  icon: const Icon(Icons.person,
                      color: Color.fromARGB(255, 56, 142, 60)),
                  onPressed: () => debugPrint("Profil"),
                ),
              ),
            ],
          ),
        ],
      ),
      elevation: 10,
    );
  }

  Drawer _buildDrawer(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          _buildDrawerHeader(),
          ..._drawerMenuItems(context),
        ],
      ),
    );
  }

  DrawerHeader _buildDrawerHeader() {
    return const DrawerHeader(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 76, 175, 80), 
            Color.fromARGB(255, 56, 142, 60), 
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              size: 40,
              color: Color.fromARGB(255, 76, 175, 80),
            ),
          ),
          SizedBox(height: 10),
          Text(
            'Bienvenue !',  // il faut ajoute en dessous de bienvenue le pseudo du user connecté 
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            'Prêt à jouer ?',
            style: TextStyle(color: Colors.white70),
          ),
        ],
      ),
    );
  }

  List<Widget> _drawerMenuItems(BuildContext context) {
    final menuItems = [
      {'icon': Feather.home, 'text': 'Accueil', 'action': () => debugPrint("Accueil")},
      {'icon': Feather.home, 'text': 'Quêtes', 'action': () => debugPrint("Quêtes")},
      {'icon': Feather.home, 'text': 'Farm', 'action': () => debugPrint("Farm")},
      {'icon': Feather.home, 'text': 'Items', 'action': () => debugPrint("Items")},
      {'icon': Feather.user, 'text': 'Profil', 'action': () => debugPrint("Profil")},
      {'icon': Feather.settings, 'text': 'Paramètres', 'action': () => debugPrint("Paramètres")},
      {'icon': Feather.log_out, 'text': 'Déconnexion', 'action': () => debugPrint("Déconnexion")},
    ];

    return menuItems
        .map(
          (item) => _buildAnimatedTile(
            icon: item['icon'] as IconData,
            text: item['text'] as String,
            onTap: item['action'] as VoidCallback,
          ),
        )
        .toList();
  }

  Widget _buildAnimatedTile({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      splashColor: const Color.fromARGB(255, 101, 156, 0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          children: [
            Icon(icon, color: const Color.fromARGB(255, 76, 175, 80), size: 24),
            const SizedBox(width: 20),
            Text(
              text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}