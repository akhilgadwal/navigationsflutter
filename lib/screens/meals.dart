import 'package:flutter/material.dart';
import '../model/meal.dart';
import '../widgets/meals_widget.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({
    super.key,
    required this.title,
    required this.listMeal,
  });
  final String title;
  //need a list of meals
  final List<Meal> listMeal;

  @override
  Widget build(BuildContext context) {
    Widget content = Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'uhh...ohhhh no data found',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.onBackground),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'Try selecting some diffrent cat',
            style: Theme.of(context)
                .textTheme
                .bodyLarge!
                .copyWith(color: Theme.of(context).colorScheme.onBackground),
          )
        ],
      ),
    );

    if (listMeal.isNotEmpty) {
      content = ListView.builder(
          itemCount: listMeal.length,
          itemBuilder: (context, index) => MealsItems(
                meal: listMeal[index],
              ));
    }
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: content);
  }
}
