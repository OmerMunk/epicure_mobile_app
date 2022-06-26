import 'package:flutter/material.dart';
import '../widgets/restaurants_dishes_list.dart';
import '../models/dish.dart';

class DishesOverviewScreen extends StatefulWidget {
  final String restaurantName;

  DishesOverviewScreen(this.restaurantName);

  @override
  State<DishesOverviewScreen> createState() => _DishesOverviewScreenState();
}

class _DishesOverviewScreenState extends State<DishesOverviewScreen> {
  late MealTime _showByMealTime;

  @override
  void initState() {
    _showByMealTime = MealTime.all;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.restaurantName),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (MealTime selectedValue) {
              setState(() {
                _showByMealTime = (selectedValue);
              });
            },
            itemBuilder: (_) => [
              const PopupMenuItem(
                value: MealTime.all,
                child: Text('All'),
              ),
              const PopupMenuItem(
                value: MealTime.breakfast,
                child: Text('Breakfast'),
              ),
              const PopupMenuItem(
                value: MealTime.lunch,
                child: Text('Lunch'),
              ),
              const PopupMenuItem(
                value: MealTime.dinner,
                child: Text('Dinner'),
              ),
            ],
            icon: const Icon(
              Icons.more_vert,
            ),
          ),
        ],
      ),
      body: RestaurantDishesList(_showByMealTime),
    );
  }
}
