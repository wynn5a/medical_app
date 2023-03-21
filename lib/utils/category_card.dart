import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final String icon;
  final String name;

  const CategoryCard({super.key, required this.icon, required this.name});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.deepPurple[100],
        ),
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: Row(
          children: [
            Image.asset(
              icon,
              width: 30,
              height: 30,
            ),
            const SizedBox(width: 10),
            Text(name),
          ],
        ),
      ),
    );
  }
}
