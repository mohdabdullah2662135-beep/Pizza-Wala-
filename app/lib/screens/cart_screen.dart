import 'package:flutter/material.dart';
import '../services/cart_service.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("🛒 My Cart"),
      ),

      body: Column(
        children: [

          Expanded(
            child: ListView.builder(
              itemCount: CartService.cartItems.length,

              itemBuilder: (context, index) {
                final item = CartService.cartItems[index];

                return ListTile(
                  title: Text(item.name),

                  subtitle: Text(
                    "Quantity: ${item.quantity}",
                  ),

                  trailing: Text(
                    "₹${item.price}",
                  ),
                );
              },
            ),
          ),

          Text(
            "Total: ₹${CartService.getTotal()}",
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}