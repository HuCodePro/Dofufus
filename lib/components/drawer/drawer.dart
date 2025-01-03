import 'package:flutter/material.dart';

class DrawerCompo extends StatelessWidget {
  const DrawerCompo({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildDrawerHeader(),

          Expanded(
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                _buildDrawerItem(
                  icon: Icons.home,
                  text: 'Accueil',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                _buildDrawerItem(
                  icon: Icons.search,
                  text: 'Recherche',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                _buildDrawerItem(
                  icon: Icons.settings,
                  text: 'Paramètres',
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),

          _buildLogoutSection(context),
        ],
      ),
    );
  }

  Widget _buildDrawerHeader() {
    return Stack(
      children: [
        Container(
          height: 180,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/drawer_background.jpg'), // Fond
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          height: 180,
          color: Colors.black.withOpacity(0.5),
        ),

        const Positioned(
          bottom: 20,
          left: 20,
          child: Row(
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/images/profile.jpg'), // avatar de dofus 
              ),
              SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Bienvenue, "nom du joueur connecté" !',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Connecté à Dofufus',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }

  // items
  Widget _buildDrawerItem({
    required IconData icon,
    required String text,
    required VoidCallback onTap,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: const Color.fromARGB(255, 38, 38, 38),
        size: 24,
      ),
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
        ),
      ),
      onTap: onTap,
    );
  }

  // deco en bas 
  Widget _buildLogoutSection(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ElevatedButton.icon(
        onPressed: () {
          Navigator.pop(context);
          // ici logique de déconnexion
        },
        icon: const Icon(Icons.logout),
        label: const Text('Déconnexion'),
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color.fromARGB(255, 255, 44, 44),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          padding: const EdgeInsets.symmetric(vertical: 15),
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}