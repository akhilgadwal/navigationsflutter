import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MealTraits extends StatelessWidget {
  const MealTraits({super.key, required this.icon, required this.time});
  final IconData icon;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          size: 20,
          color: Colors.white,
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          time,
          style: const TextStyle(color: Colors.white),
        )
      ],
    );
  }
}
