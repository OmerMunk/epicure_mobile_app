import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/dish.dart';
import '../providers/dishes.dart';

class DishDetailScreen extends StatelessWidget {
  static const routeName = '/dish-detail';

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final String dishId = ModalRoute.of(context)?.settings.arguments as String;
    final Dish dish =
        Provider.of<Dishes>(context, listen: false).findById(dishId);
    AppBar appBar = AppBar(
        // title: Text(loadedDish.name),
        );

    return Scaffold(
      appBar: appBar,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Stack(
            children: <Widget>[
              Image.asset(
                'assets/images/dishes/${dish.image}.png',
                alignment: Alignment.topCenter,
                // fit: BoxFit.fi,
                height: (mediaQuery.size.height -
                        appBar.preferredSize.height -
                        mediaQuery.padding.top -
                        kToolbarHeight) *
                    0.52,
                width: double.infinity,
              ),
              Flex(
                direction: Axis.horizontal,
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  if (dish.isFavorite)
                    const Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.favorite,
                        color: Colors.red,
                        shadows: [Shadow(blurRadius: 20, color: Colors.black)],
                      ),
                    ),
                ],
              )
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(
                vertical: 0, horizontal: mediaQuery.size.width * 0.053),
            width: double.infinity,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  dish.name,
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  dish.description,
                  style: Theme.of(context).textTheme.bodyText1,
                ),
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'ADD TO BAG',
                      style: Theme.of(context).textTheme.button,
                    ))
              ],
            ),
          ),
        ],
      ),
    );
  }
}
