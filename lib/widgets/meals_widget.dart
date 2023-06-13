import 'package:ecommerce/model/meal.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

import 'meal_trait.dart';

class MealsItems extends StatelessWidget {
  const MealsItems({super.key, required this.meal});
  final Meal meal;

  String get ComplexityText {
    return meal.complexity.name[0].toUpperCase() +
        meal.complexity.name.substring(1);
  }

  String get Affordability {
    return meal.complexity.name[0].toUpperCase() +
        meal.complexity.name.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: InkWell(
        onTap: () {},
        child: Stack(children: [
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(meal.imageUrl),
            fit: BoxFit.cover,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 50,
              color: Colors.black54,
              child: Column(
                children: [
                  Text(
                    meal.title,
                    style: const TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                    maxLines: 2,
                    textAlign: TextAlign.center,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MealTraits(
                          icon: Icons.schedule, time: '${meal.duration}'),
                      const SizedBox(
                        width: 15,
                      ),
                      MealTraits(icon: Icons.work, time: '${meal.complexity} '),
                      MealTraits(icon: Icons.money, time: Affordability),
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
