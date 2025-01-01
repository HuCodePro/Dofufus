import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/home_screen.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      title: 'Dofufus',
      theme: ThemeData(
         textTheme: GoogleFonts.srirachaTextTheme(),
        primarySwatch: Colors.orange, 
      ),
      initialRoute: '/splash',
      routes: {
        '/splash': (context) => const SplashScreen(), // Route pour le Splash Screen
        '/home': (context) =>  const HomeScreen(), // Route pour la page d'accueil
      },
    );
  }
}