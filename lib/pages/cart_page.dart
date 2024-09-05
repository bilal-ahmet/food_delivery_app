import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_cart_tile.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        final userCart = restaurant.cart;

        return Scaffold(
          appBar: AppBar(
            title: const Text("Cart"),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: Column(
            children: [
              Expanded(
                  child: ListView.builder(
                      itemCount: userCart.length,
                      itemBuilder: (context, index) {

                        final cartItem = userCart[index];

                        return MyCartTile(cartItem: cartItem);
                      }))
            ],
          ),
        );
      },
    );
  }
}
