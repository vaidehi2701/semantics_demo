import 'package:flutter/material.dart';
import 'package:semantics_demo/food_detail.dart';

class FoodListScreen extends StatelessWidget {
  final List<Map<String, String>> dishes = [
    {
      'name': 'Pizza',
      'description': 'Cheesy and delicious pizza with toppings.'
    },
    {
      'name': 'Burger',
      'description': 'Juicy burger with lettuce, tomato, and sauce.'
    },
    {
      'name': 'Pasta',
      'description': 'Creamy Alfredo pasta with chicken and herbs.'
    },
    {
      'name': 'Sushi',
      'description': 'Fresh sushi rolls with salmon and avocado.'
    },
    {'name': 'Salad', 'description': 'Healthy green salad with fresh veggies.'},
    {
      'name': 'Tacos',
      'description': 'Spicy and flavorful tacos with chicken filling.'
    },
    {
      'name': 'Ice Cream',
      'description': 'Sweet and creamy ice cream in various flavors.'
    },
  ];

  FoodListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Food Menu'),
      ),
      body: ListView.builder(
        itemCount: dishes.length,
        itemBuilder: (context, index) {
          final dish = dishes[index];
          return Semantics(
            label: 'Dish: ${dish['name']}',
            hint: 'Tap to view details of ${dish['name']}',
            button: true,
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                  side: BorderSide(color: Colors.grey.shade300, width: 1.0),
                ),
                elevation: 4, // Adds shadow for a lifted effect
                child: ListTile(
                  contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  leading:
                      const Icon(Icons.fastfood, color: Colors.orangeAccent),
                  title: Text(
                    dish['name']!,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  trailing: const Icon(Icons.arrow_forward,
                      color: Colors.orangeAccent),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => FoodDetailScreen(dish: dish),
                      ),
                    );
                  },
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
