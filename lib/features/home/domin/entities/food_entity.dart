import 'package:restaurant_mobile_app/core/utils/assets.dart';

class FoodEntity {
  final String id;
  final String title;
  final String imageUrl;
  final double rating;
  final String distance;
  final double price;
  final ProductCategory category;

  FoodEntity({
    required this.category,
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.rating,
    required this.distance,
    required this.price,
  });
}

enum ProductCategory { burger, pizza, taco, drink }

final foodList = [
  FoodEntity(
    id: '1',
    title: 'Cheese Burger',
    imageUrl: Assets.testImage,
    rating: 4.5,
    distance: '2.5 km',
    price: 5.99,
    category: ProductCategory.burger,
  ),
  FoodEntity(
    id: '2',
    title: 'Pepperoni Pizza',
    imageUrl: Assets.testImage,
    rating: 4.7,
    distance: '3.0 km',
    price: 8.99,
    category: ProductCategory.pizza,
  ),
  FoodEntity(
    id: '3',
    title: 'Chicken Taco',
    imageUrl: Assets.testImage,
    rating: 4.2,
    distance: '1.5 km',
    price: 3.99,
    category: ProductCategory.taco,
  ),
  FoodEntity(
    id: '4',
    title: 'Lemonade Drink',
    imageUrl: Assets.testImage,
    rating: 4.0,
    distance: '0.5 km',
    price: 2.49,
    category: ProductCategory.drink,
  ),
];
