import 'package:flutter/foundation.dart';
import './restaurant.dart';

class Dish with ChangeNotifier {
  String id;
  String name;
  String description;
  // final Restaurant? restaurant;
  String image;
  int price;
  List<String> properties;
  bool signature;
  bool isFavorite;

  Dish({
    required this.id,
    required this.name,
    required this.description,
    // @required this.restaurant,
    required this.image,
    required this.price,
    this.properties = const [],
    this.signature = false,
    this.isFavorite = false,
  });

  void toggleFavoriteStatus() {
    isFavorite = !isFavorite;
    notifyListeners();
  }
}
