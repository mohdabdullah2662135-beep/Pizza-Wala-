import 'package:flutter/material.dart';
import '../models/pizza_model.dart';

class PizzaCard extends StatelessWidget {
  final Pizza pizza;

  const PizzaCard({
    super.key,
    required this.pizza,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(10),

      child: ListTile(
        leading: const Icon(
          Icons.local_pizza,
          size: 40,
        ),

        title: Text(
          pizza.name,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),

        subtitle: Text(
          pizza.description,
        ),

        trailing: ElevatedButton(
          onPressed: () {
            // Add to cart function baad mein add karenge
          },
          child: Text(
            "₹${pizza.price}\nAdd",
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}