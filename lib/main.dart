import 'package:flutter/material.dart';

import 'presentation/screen/splash_screen.dart'; // استدعاء شاشة الترحيب

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(), // بداية نقطة انطلاق التطبيق
    ),
  );
}
