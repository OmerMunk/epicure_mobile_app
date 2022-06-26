import 'package:flutter/material.dart';

import 'package:flutter_svg/parser.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import '../models/dish.dart';
import '../screens/dish_detail_screen.dart';

const String assetName = 'assets/images/logos/ils.svg';

class DishItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final dish = Provider.of<Dish>(context);
    final mediaQuery = MediaQuery.of(context);
    return GestureDetector(
      onTap: () {
        print(dish.mealTime);
        Navigator.of(context)
            .pushNamed(DishDetailScreen.routeName, arguments: dish.id);
      },
      child: Container(
        height: mediaQuery.size.height * 0.46,
        width: double.infinity,
        margin: EdgeInsets.symmetric(
            vertical: mediaQuery.size.height * 0.027,
            horizontal: mediaQuery.size.width * 0.053),
        color: Theme.of(context).colorScheme.secondary,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Image.asset(
                  'assets/images/dishes/${dish.image}.png',
                  fit: BoxFit.fitWidth,
                  height: mediaQuery.size.height * 0.25,
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
                          shadows: [
                            Shadow(blurRadius: 20, color: Colors.black)
                          ],
                        ),
                      ),
                  ],
                )
              ],
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.only(
                  left: 16, right: 16, top: 16, bottom: 4),
              child: Text(
                dish.name,
                style: Theme.of(context).textTheme.headline3,
                textAlign: TextAlign.left,
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 4),
              width: double.infinity,
              child: Text(
                dish.description,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
              child: IntrinsicHeight(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Flexible(
                      fit: FlexFit.loose,
                      flex: 1,
                      child: SvgPicture.asset(
                        assetName,
                      ),
                    ),
                    Flexible(
                      fit: FlexFit.loose,
                      flex: 3,
                      child: Text(
                        dish.price.toString(),
                        style: Theme.of(context).textTheme.headline3,
                      ),
                    ),
                    const Flexible(
                      fit: FlexFit.loose,
                      flex: 15,
                      child: Divider(
                        thickness: 1,
                        indent: 16,
                        endIndent: 16,
                        color: Color.fromRGBO(151, 151, 151, 1),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
