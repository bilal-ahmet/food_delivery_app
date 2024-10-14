import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_quantity_selector.dart';
import 'package:food_delivery_app/models/cart_items.dart';
import 'package:food_delivery_app/models/restaurant.dart';
import 'package:provider/provider.dart';

class MyCartTile extends StatelessWidget {
  final CartItem cartItem;
  const MyCartTile({super.key, required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) => Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.secondary,
            borderRadius: BorderRadius.circular(8)),
        margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.asset(
                      cartItem.food.imagePath,
                      height: 100,
                      width: 100,
                      fit: BoxFit.cover,
                    )),
                const SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(cartItem.food.name),
                    Text("${cartItem.food.price} ₺"),
                    const SizedBox(height: 10,),
                    MyQuantitySelector(
                    quantity: cartItem.quantity,
                    food: cartItem.food,
                    onIncrement: () {
                      restaurant.addToCart(
                          cartItem.food, cartItem.selectedAddons);
                    },
                    onDecrement: () {
                      restaurant.removeFromCart(cartItem);
                    })
                  ],
                ),
                const Spacer(),
                const SizedBox(
                  width: 15,
                ),
              ],
            ),
            SizedBox(
              height: cartItem.selectedAddons.isEmpty ? 0 : 60,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: cartItem.selectedAddons
                    .map((addon) => Padding(
                      padding: const EdgeInsets.only(right: 8.0),
                      child: FilterChip(
                            label: Row(
                              children: [
                                Text(addon.name),
                                Text(" (${addon.price} ₺)", style: TextStyle(color: Theme.of(context).colorScheme.primary),)
                              ],
                            ),
                            onSelected: (value) {},
                            backgroundColor: Theme.of(context).colorScheme.secondary,
                            labelStyle: TextStyle(color: Theme.of(context).colorScheme.inversePrimary, fontSize: 12),
                            shape: StadiumBorder(side: BorderSide(color: Theme.of(context).colorScheme.inversePrimary)),
                          ),
                    ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
