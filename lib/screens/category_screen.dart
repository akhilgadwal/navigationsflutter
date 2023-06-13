import 'package:ecommerce/model/categories.dart';
import 'package:ecommerce/screens/meals.dart';
import 'package:ecommerce/widgets/gride_view.dart';
import 'package:flutter/material.dart';
import '../data/dummy_cat.dart';

class CategoryScreens extends StatelessWidget {
  const CategoryScreens({super.key});

  void selectedCat(BuildContext context, Categories category) {
    final dummymelasdata = dummyMeals
        .where((meal) => meal.categories.contains(category.id))
        .toList();
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => MealScreen(
          title: category.title,
          listMeal: dummymelasdata,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Category')),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            mainAxisSpacing: 20,
            crossAxisSpacing: 20,
          ),
          children: [
            for (final category in availabcat)
              CategoryGrideView(
                category: category,
                onselect: () {
                  selectedCat(context, category);
                },
              )
          ],
        ),
      ),
    );
  }
}
