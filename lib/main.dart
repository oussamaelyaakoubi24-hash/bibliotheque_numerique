import 'package:flutter/material.dart';

import 'presentation/screen/splash_screen.dart'; //kayjib lecrant dyal start

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0B1326),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Color(0xFF171C2E),
          selectedItemColor: Color(0xFF6F88FF),
          unselectedItemColor: Color(0xFFA0A5B9),
        ),
      ),
      home: SplashScreen(), // kay9l3 lecrant dyak start
    ),
  );
}
