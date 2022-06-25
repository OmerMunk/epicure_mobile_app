import 'package:flutter/material.dart';
import '../widgets/restaurants_dishes_list.dart';

class DishesOverviewScreen extends StatelessWidget {
  final String restaurantName;

  DishesOverviewScreen(this.restaurantName);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(restaurantName),
      ),
      body: RestaurantDishesList(),
    );
  }
}
