import './chef.dart';

class Restaurant {
  final String? name;
  final Chef? chef;
  final int? rating;
  final bool? popular;
  final Map<String, Map>? openingHours;
  final String? address;
  final String? image;

  Restaurant(
      {this.name,
      this.chef,
      this.rating,
      this.popular,
      this.openingHours,
      this.address,
      this.image});
}
