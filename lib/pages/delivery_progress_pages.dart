import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/my_receipt.dart';

class DeliveryProgressPage extends StatelessWidget {
  const DeliveryProgressPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: const Text("Delivery Progress"), backgroundColor: Colors.transparent,),
      body: const Column(
        children: [
          MyReceipt()
        ],
      )
    );
  }
}