import 'package:flutter/material.dart';
import '../data/pizza_data.dart';
import '../widgets/pizza_card.dart';
import 'cart_screen.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
  title: const Text("🍕 PizzaWala"),

  actions: [
    IconButton(
      icon: const Icon(Icons.shopping_cart),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const CartScreen(),
          ),
        );
      },
    ),
  ],
),

      body: ListView.builder(
        itemCount: pizzas.length,

        itemBuilder: (context, index) {
          return PizzaCard(
            pizza: pizzas[index],
          );
        },
      ),
    );
  }
}