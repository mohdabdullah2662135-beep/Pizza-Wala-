import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("🍕 PizzaWala"),
      ),

      body: Column(
        children: [

          const SizedBox(height: 20),

          const Text(
            "Welcome to PizzaWala",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),

          ElevatedButton(
            onPressed: () {},
            child: const Text("Order Pizza"),
          ),

        ],
      ),
    );
  }
}