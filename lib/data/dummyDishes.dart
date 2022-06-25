import '../models/dish.dart';

List<Dish> dummyDishes = [
  Dish(
      id: 'd1',
      name: "Pad Ki Mao",
      description:
          "Green Papaya, Mango, Chukka Chili, Mint, Kaffir lime, Cashew, Akaya Cham sauce",
      image: "pad_ki_mao_3",
      price: 65,
      properties: ["spicy"],
      isFavorite: true),
  Dish(
      id: 'd2',
      name: "Garbanzo Frito",
      description:
          "Polenta fingers, veal cheek, magic chili cured lemon cream, yellow laksa",
      image: "garbanzo_frito",
      price: 98,
      properties: []),
  Dish(
      id: 'd3',
      name: "Smoked Pizza",
      description: "Basil dough, cashew \"butter\", demi-glace, bison & radish",
      image: "smoked_pizza",
      price: 65,
      properties: ["vegan"])
];
