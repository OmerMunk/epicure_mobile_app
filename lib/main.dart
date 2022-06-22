import 'package:flutter/material.dart';
import './screens/dishes_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Epicure',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: DishesOverviewScreen('Claro'),
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
