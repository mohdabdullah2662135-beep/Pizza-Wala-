import 'package:flutter/material.dart';

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
      home: Scaffold(
        appBar: AppBar(
          title: const Text('🍕 PizzaWala'),
        ),
        body: const Center(
          child: Text(
            'Welcome to PizzaWala!',
            style: TextStyle(fontSize: 24),
          ),
        ),
      ),
    );
  }
}