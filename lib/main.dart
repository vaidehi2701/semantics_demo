import 'package:flutter/material.dart';
import 'package:semantics_demo/food_list.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Accessible Food App',
      theme: ThemeData(primarySwatch: Colors.teal),
      home: FoodListScreen(),
    );
  }
}
