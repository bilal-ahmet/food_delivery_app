import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final void Function() ontap;
  const MyFoodTile({super.key, required this.food, required this.ontap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontap,
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Expanded(child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(food.name),
                    Text("${food.price} ₺", style: TextStyle(color: Theme.of(context).colorScheme.primary),),
                    const SizedBox(height: 10,),
                    Text(food.description, style: TextStyle(color: Theme.of(context).colorScheme.inversePrimary))
                  ],
                )),

                const SizedBox(width: 15,),
            
                ClipRRect(borderRadius: BorderRadius.circular(8), child: SizedBox(height: 120, width: 120, child: Image.asset(food.imagePath, height: 120,fit: BoxFit.cover,)))
              ],
            ),
          ),
        ),
        Divider(color: Theme.of(context).colorScheme.tertiary, endIndent: 15, indent: 25,)
      ],
    );
  }
}