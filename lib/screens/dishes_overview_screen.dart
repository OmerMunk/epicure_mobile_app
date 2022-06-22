import '../data/dummyDishes.dart';
import 'package:flutter/material.dart';
import '../models/dish.dart';
import '../widgets/DishItem.dart';

class DishesOverviewScreen extends StatelessWidget {
  final List<Dish> loadedDishes = dummyDishes;
  final String restaurantName;

  DishesOverviewScreen(this.restaurantName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurantName),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(10),
        itemBuilder: (ctx, index) {
          return DishItem(loadedDishes[index]);
        },
        itemCount: loadedDishes.length,
      ),
    );
  }
}
