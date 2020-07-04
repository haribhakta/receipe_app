import 'package:flutter/material.dart';
import './screens/bottom_bar_screen.dart';
import './screens/category_meal_screen.dart';
//import './screens/category_overview_screen.dart';
import './screens/meal_details_screen.dart';

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
          textTheme: ThemeData.light().textTheme.copyWith(
              body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              body2: TextStyle(color: Color.fromRGBO(20, 51, 1, 1)),
              title: TextStyle(fontFamily: "Roboto", fontSize: 24.0))),
      home: BottomBarScreen(),
      routes: {
        CategoryMealScreen.routeName: (ctx) => CategoryMealScreen(),
        MealDetailsScreen.routeName: (ctx) => MealDetailsScreen(),
      },
    );
  }
}
