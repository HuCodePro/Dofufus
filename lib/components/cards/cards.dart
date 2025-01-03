import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String title; 
  final Color color; 
  final String imagePath; 
  final VoidCallback onTap;

  const Cards({
    super.key,
    required this.title,
    required this.color,
    required this.imagePath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            elevation: 12, 
            shadowColor: color.withOpacity(0.5), 
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15), 
              child: Container(
                height: 150,
                width: double.infinity, 
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(imagePath), 
                    fit: BoxFit.cover, 
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.black.withOpacity(0.6),
                        Colors.transparent,
                      ],
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                    ),
                  ),
                  alignment: Alignment.bottomLeft,
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 8),
        ],
      ),
    );
  }
}