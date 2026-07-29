import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

void main() {
  runApp(const PizzaWalaApp());
}

class PizzaWalaApp extends StatelessWidget {
  const PizzaWalaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'PizzaWala',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const HomeScreen(),
    );
  }
}