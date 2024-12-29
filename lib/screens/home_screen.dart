import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: AppBar(
          automaticallyImplyLeading: false,
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 157, 200, 0),
                  Color.fromARGB(255, 34, 122, 7),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.menu, color: Colors.white, size: 30),
                onPressed: () {
                  _scaffoldKey.currentState?.openDrawer();
                },
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
                    onPressed: () {
                      print("Recherche");
                    },
                  ),
                  const SizedBox(width: 10),
                  CircleAvatar(
                    radius: 20,
                    backgroundColor: Colors.white,
                    child: IconButton(
                      icon: const Icon(Icons.person,
                          color: Color.fromARGB(255, 134, 206, 0)),
                      onPressed: () {
                        print("Profil");
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          elevation: 10,
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 157, 200, 0),
                    Color.fromARGB(255, 34, 122, 7),
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.person,
                      size: 40,
                      color: Color.fromARGB(255, 134, 206, 0),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Bienvenue !',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text(
                    'Prêt à jouer ?',
                    style: TextStyle(color: Colors.white70),
                  ),
                ],
              ),
            ),
            _buildAnimatedTile(
              context,
              icon: Feather.home, // Icône moderne avec Vector Icons
              text: 'Accueil',
              onTap: () {
                Navigator.pop(context);
                print("Accueil");
              },
            ),
            _buildAnimatedTile(
              context,
              icon: Feather.user, // Icône moderne pour Profil
              text: 'Profil',
              onTap: () {
                Navigator.pop(context);
                print("Profil");
              },
            ),
            _buildAnimatedTile(
              context,
              icon: Feather.settings, // Icône moderne pour Paramètres
              text: 'Paramètres',
              onTap: () {
                Navigator.pop(context);
                print("Paramètres");
              },
            ),
            _buildAnimatedTile(
              context,
              icon: Feather.log_out, // Icône moderne pour Déconnexion
              text: 'Déconnexion',
              onTap: () {
                Navigator.pop(context);
                print("Déconnexion");
              },
            ),
          ],
        ),
      ),
      body: const Center(
        child: Text(
          'Bienvenue sur Dofufus !',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildAnimatedTile(BuildContext context,
      {required IconData icon, required String text, required VoidCallback onTap}) {
    return InkWell(
      onTap: onTap,
      splashColor: const Color.fromARGB(255, 157, 200, 0),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          children: [
            Icon(icon, color: const Color.fromARGB(255, 134, 206, 0), size: 24),
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