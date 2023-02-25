import 'package:flutter/material.dart';
import 'package:languagelearningappversion2/screens/splash_screen.dart';

void main() {
  runApp(TokuApp());
}

class TokuApp extends StatelessWidget {
  const TokuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "TokuApp",
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
