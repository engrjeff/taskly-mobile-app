import 'package:flutter/material.dart';
import 'package:taskly_mobile/screens/landing_screen.dart';
import 'package:taskly_mobile/screens/tasks_screen.dart';
import 'package:taskly_mobile/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: AppTheme.defaultTheme(context),
      darkTheme: AppTheme.darkTheme(context),
      home: const LandingScreen(),
    );
  }
}
