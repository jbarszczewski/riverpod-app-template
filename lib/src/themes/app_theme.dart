import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData get light {
    return ThemeData(
        appBarTheme: const AppBarTheme(elevation: 5, color: Colors.deepOrange),
        primarySwatch: Colors.deepOrange);
  }

  static ThemeData get dark {
    return ThemeData(
        appBarTheme: const AppBarTheme(elevation: 5, color: Colors.deepPurple),
        primarySwatch: Colors.deepPurple,
        brightness: Brightness.dark);
  }
}
