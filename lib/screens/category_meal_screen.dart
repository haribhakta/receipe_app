import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/meal_item.dart';

class CategoryMealScreen extends StatelessWidget {
  static const String routeName = "/meal_screen";

  @override
  Widget build(BuildContext context) {
    final routeArgs = ModalRoute.of(context).settings.arguments as Map;
    final title = routeArgs["title"];
    final id = routeArgs["id"];
    final categorymeal =
        DUMMY_MEALS.where((meal) => meal.categories.contains(id)).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: ListView.builder(
        itemBuilder: (ctx, index) => MealItem(
          id: categorymeal[index].id,
          title: categorymeal[index].title,
          imageUrl: categorymeal[index].imageUrl,
          affordability: categorymeal[index].affordability,
          duration: categorymeal[index].duration,
          complexity: categorymeal[index].complexity,
        ),
        itemCount: categorymeal.length,
      ),
    );
  }
}
