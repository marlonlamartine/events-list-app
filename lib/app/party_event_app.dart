import 'package:flutter/material.dart';
import 'package:party_event/app/screens/home_screen.dart';
import 'package:party_event/app/screens/login_screen.dart';
import 'package:party_event/app/screens/register_screen.dart';
import 'package:party_event/app/screens/splash_screen.dart';

class PartyEventApp extends StatelessWidget {
  const PartyEventApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Party Events',
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (_) => const SplashScreen(),
        '/home': (_) => const HomeScreen(),
        '/login': (_) => const LoginScreen(),
        '/register': (_) => const RegisterScreen(),
      },
    );
  }
}
