import 'package:flutter/material.dart';
import '../models/dish.dart';
import '../data/dummyDishes.dart';

class Dishes with ChangeNotifier {
  List<Dish> _dishes = dummyDishes;

  List<Dish> get items {
    //This is to make a copy of the dishes, and not return the address and the direct access.
    return [..._dishes];
  }

  List<Dish> getDishesByMealTime(MealTime mealTime) {
    return _dishes.where((dish) => dish.mealTime.contains(mealTime)).toList();
  }

  Dish findById(String id) {
    return items.firstWhere((dish) => dish.id == id);
  }

  void addDish(dishData) {
    // _dishes.add(dishData);
    notifyListeners();
  }
}
