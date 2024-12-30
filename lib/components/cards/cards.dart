import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String title; // Titre du Card
  final Color color; // Couleur de fond du Card
  final VoidCallback onTap; // Action à effectuer lors du clic

  const Cards({
    super.key,
    required this.title,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10), // Coins arrondis
        ),
        elevation: 5, // Effet d'ombre
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 18,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
