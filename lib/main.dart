import 'package:flutter/material.dart';
import 'package:medclub/src/config/router/router.dart';
import 'package:medclub/src/config/theme/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final _router = AppRouter();

    return MaterialApp.router(
      theme: AppTheme.customTheme, // Только одна тема
      debugShowCheckedModeBanner: false,
      routerConfig: _router.config(),
    );
  }
}
