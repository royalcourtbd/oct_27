import 'package:flutter/material.dart';
import 'package:oct_27/views/meal_details_screen.dart';
import 'package:oct_27/views/tabbar_screen.dart';

import '/views/category_meals_screen.dart';

import 'views/category_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: TabBarScreen(),
      routes: {
        CategoryMealsScreen.route: (context) => CategoryMealsScreen(),
        MealDetailsScreeen.route: (context) => MealDetailsScreeen(),
      },
    );
  }
}
