import 'package:flutter/material.dart';
import 'package:food_delivery_app/models/food.dart';

class MyTabBar extends StatelessWidget {
  final TabController tabController;
  const MyTabBar({super.key, required this.tabController});

  List<Tab> _buildCategoryTabs() {
    return FoodCategory.values.map((toElement) {
      return Tab(
        text: toElement.toString().split(".").last,
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return TabBar(controller: tabController, tabs: _buildCategoryTabs());
  }
}
