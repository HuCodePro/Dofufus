import 'package:flutter/material.dart';

class GenericPage extends StatelessWidget {
  final String title; // Titre de la page
  final String content; // Contenu de la page
  final Color appBarColor; // Couleur de la AppBar

  const GenericPage({
    super.key,
    required this.title,
    required this.content,
    required this.appBarColor,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: appBarColor,
      ),
      body: Center(
        child: Text(
          content,
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
