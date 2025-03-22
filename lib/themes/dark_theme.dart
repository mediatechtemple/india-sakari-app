

import 'package:flutter/material.dart';


final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primaryColor: Colors.blueGrey,
  scaffoldBackgroundColor: Colors.black87,
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.black54,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
  ),

  buttonTheme: ButtonThemeData(
    buttonColor: Colors.blueGrey,
    textTheme: ButtonTextTheme.primary,
  ),
  cardColor: Colors.black54,

  // Bottom Navigation Bar theme (for BottomNavigationBar items)
  bottomNavigationBarTheme: BottomNavigationBarThemeData(
    backgroundColor: Colors.black87,    // Background of the Bottom Navigation Bar
    selectedItemColor: Colors.white,    // Color for selected items
    unselectedItemColor: Colors.grey,   // Color for unselected items
  ),

  // Icon Theme
  iconTheme: IconThemeData(
    color: Colors.white, // Default icon color for dark mode
  ),

);

