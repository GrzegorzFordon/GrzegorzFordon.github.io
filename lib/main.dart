import 'package:flutter/material.dart';
import 'package:portfolio/views/main_view.dart';

void main() {
  runApp(const MainApp());
}

ThemeData themeData = ThemeData(
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.black, brightness: Brightness.dark),
);

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      home: Scaffold(body: MainView()),
    );
  }
}
