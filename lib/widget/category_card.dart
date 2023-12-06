import 'package:flutter/material.dart';
import 'package:mealsapp/models/category.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.category});
  final Category category;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(8),
      onTap: () => {},
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.deepPurple.withOpacity(0.5),
          Colors.purple.withOpacity(0.9)
        ], begin: Alignment.topLeft, end: Alignment.centerRight)),
        child: Column(
          children: [
            SizedBox(
                height: 100,
                width: 100,
                child: Image.asset(category.imagePath)),
            Text(category.name),
          ],
        ),
      ),
    );
  }
}
