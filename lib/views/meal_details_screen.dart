import 'package:flutter/material.dart';
import 'package:oct_27/data/dummy_categories.dart';

class MealDetailsScreeen extends StatelessWidget {
  static String route = 'meal-detals-screen';

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context)!.settings.arguments as String;
    final selectMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    return Scaffold(
      appBar: AppBar(
        title: Text(selectMeal.title),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Container(
              height: 300,
              width: double.infinity,
              child: Image.network(
                selectMeal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            Text(
              "Ingredients",
              style: TextStyle(fontSize: 30),
            ),
            Container(
              decoration: BoxDecoration(),
              height: 200,
              width: 300,
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(),
                itemCount: selectMeal.ingredients.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      selectMeal.ingredients[index],
                      style: TextStyle(fontSize: 18),
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 20),
            Text(
              "Steps",
              style: TextStyle(fontSize: 30),
            ),
            Container(
              height: 200,
              width: 300,
              child: ListView.separated(
                separatorBuilder: (context, index) => Divider(),
                itemCount: selectMeal.steps.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      selectMeal.steps[index],
                      style: TextStyle(fontSize: 18),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
