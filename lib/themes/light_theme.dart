import 'package:flutter/material.dart';

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primaryColor: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.white,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
  ),


  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blue,
    textTheme: ButtonTextTheme.primary,
  ),
  cardColor: Colors.white,


  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.white,   // Background of the Bottom Navigation Bar
    selectedItemColor: Colors.blue,  // Color for selected items
    unselectedItemColor: Colors.black54, // Color for unselected items
  ),

  // Icon Theme
  iconTheme: IconThemeData(
    color: Colors.black,  // Default icon color for light mode
  ),
);

