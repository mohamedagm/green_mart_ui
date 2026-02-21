import 'package:flutter/material.dart';
import 'package:green_mart/core/theme/app_theme.dart';
import 'package:green_mart/features/intro/splash_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppThemes.light,
      home: Scaffold(body: SplashScreen()),
    );
  }
}
