import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/dishes_overview_screen.dart';
import './colors/black_pallet.dart';
import './screens/dish_detail_screen.dart';
import './providers/dishes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Dishes(),
      child: MaterialApp(
        title: 'Epicure',
        theme: ThemeData(
            fontFamily: 'HelveticaNeue',
            textTheme: const TextTheme(
              headline1: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w200,
                  letterSpacing: 1.97),
              headline2: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w200,
                  letterSpacing: 1.25),
              headline3: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 2.67),
              bodyText1: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w200,
                  letterSpacing: 1.97),
              button: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  letterSpacing: 2.67),
              labelMedium: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w200,
                  letterSpacing: 1.97),
            ),
            colorScheme: ColorScheme.fromSwatch(primarySwatch: primaryBlack)
                .copyWith(secondary: const Color.fromRGBO(249, 244, 234, 1))
                .copyWith(tertiary: const Color.fromRGBO(245, 190, 0, 1))
                .copyWith(
                    primaryContainer: const Color.fromRGBO(151, 151, 151, 1))),
        home: DishesOverviewScreen('Claro'),
        routes: {DishDetailScreen.routeName: (context) => DishDetailScreen()},
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Epicure'),
      ),
      body: const Center(
        child: Text('Welcome'),
      ),
    );
  }
}
