import 'package:flutter/material.dart';
import 'package:receipe_app/screens/category_meal_screen.dart';
import 'package:receipe_app/screens/category_overview_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Receipe App',
      theme: ThemeData(
        primaryColor: Colors.blue,
        accentColor: Colors.deepOrangeAccent,
        canvasColor: Color.fromRGBO(255, 254, 220, 1),
        fontFamily: "Roboto",
      ),
      home: CategoryOverviewScreen(),
      routes: {
        CategoryMealScreen.routeName: (ctx) => CategoryMealScreen(),
      },
    );
  }
}
