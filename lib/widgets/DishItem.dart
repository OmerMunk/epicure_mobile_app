import 'package:flutter/material.dart';
import '../models/dish.dart';

class DishItem extends StatelessWidget {
  final Dish dish;

  DishItem(this.dish);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 375,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(vertical: 22, horizontal: 20),
      color: const Color.fromRGBO(249, 244, 234, 1),
      child: Column(
        children: <Widget>[
          Image.asset(
            'assets/images/${dish.image}.png',
            fit: BoxFit.fitWidth,
            height: 208,
            width: double.infinity,
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Text(dish.name),
          ),
          Text(dish.description),
        ],
      ),
    );
  }
}
