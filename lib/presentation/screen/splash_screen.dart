import 'package:flutter/material.dart';

import 'home_screen.dart';

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    if (!mounted) return;
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(height: 150),
              Image.asset('images/images.png', width: 200, height: 200),
              const Text('BIFSO', style: TextStyle(fontSize: 24)),
              const SizedBox(height: 10),
              const Text(
                'bibiliotheque',
                style: TextStyle(fontSize: 18, color: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
