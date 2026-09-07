import 'package:flutter/material.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF53B175),
      body: Center(
        child: Image.asset(
          'assets/images/first.png',
          width: 268,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}