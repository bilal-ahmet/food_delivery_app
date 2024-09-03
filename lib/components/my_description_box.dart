import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).colorScheme.secondary),
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Text("49.99 ₺", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary)),
              Text("Delivery fee", style: TextStyle(color: Theme.of(context).colorScheme.primary),)
            ],
          ),

          Column(
            children: [
              Text("15 - 30 minutes", style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary)),
              Text("Delivery time", style: TextStyle(color: Theme.of(context).colorScheme.primary),)
            ],
          )
        ],
      ),
    );
  }
}