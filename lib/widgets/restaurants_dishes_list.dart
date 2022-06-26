import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/DishItem.dart';
import '../providers/dishes.dart';
import '../models/dish.dart';

class RestaurantDishesList extends StatelessWidget {
  final MealTime showByMealTime;
  RestaurantDishesList(this.showByMealTime);
  @override
  Widget build(BuildContext context) {
    final dishesData = Provider.of<Dishes>(context);
    final dishes = showByMealTime == MealTime.all
        ? dishesData.items
        : dishesData.getDishesByMealTime(showByMealTime);
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return ChangeNotifierProvider.value(
          value: dishes[index],
          child: DishItem(),
        );
      },
      itemCount: dishes.length,
    );
  }
}
