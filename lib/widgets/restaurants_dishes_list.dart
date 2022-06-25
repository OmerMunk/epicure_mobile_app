import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/DishItem.dart';
import '../providers/dishes.dart';

class RestaurantDishesList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dishesData = Provider.of<Dishes>(context);
    final dishes = dishesData.items;
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
