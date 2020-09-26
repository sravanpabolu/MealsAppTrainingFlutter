import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  final String categoryID;
  final String categoryTitle;
  // final String categoryColor;

  CategoryMealsScreen(
    this.categoryID,
    this.categoryTitle,
    // this.categoryColor,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: Center(
        child: Text('The Recipes for the category'),
      ),
    );
  }
}
