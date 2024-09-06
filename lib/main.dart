import 'package:flutter/material.dart';
import 'package:news_application/consts/theme.dart';
import 'package:news_application/view/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'The News App',
      debugShowCheckedModeBanner: false,
      darkTheme: BTheme.darkTheme,
      theme: BTheme.lightTheme,
      themeMode: ThemeMode.system,
      home: const SplashScreen(),
    );
  }
}
