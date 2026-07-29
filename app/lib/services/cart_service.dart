import '../models/cart_model.dart';

class CartService {

  static List<CartItem> cartItems = [];

  static void addToCart(CartItem item) {
    cartItems.add(item);
  }

  static double getTotal() {
    double total = 0;

    for (var item in cartItems) {
      total += item.price * item.quantity;
    }

    return total;
  }
}