

import 'package:flutter/material.dart' show AppBarTheme, ButtonStyle, Color, Colors, ElevatedButton, ElevatedButtonThemeData, FloatingActionButtonThemeData, StadiumBorder, TextButton, TextButtonTheme, TextButtonThemeData, ThemeData;

class AppTheme {

  static const Color primary = Colors.orange;

  static ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(
          color: primary,
          elevation: 0
      ),
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(primary: primary)
      ),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(
        backgroundColor: primary
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          primary: Colors.indigo,
          shape: const StadiumBorder(),
          elevation: 0
        )
      )
  );

}