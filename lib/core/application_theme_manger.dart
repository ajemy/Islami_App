import 'package:flutter/material.dart';

class AppThemeManger {
  static ThemeData themeData = ThemeData(
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          centerTitle: true,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontFamily: "El Messiri",
          fontWeight: FontWeight.bold,
          color: Color(0xff242424),
        ),
        bodyLarge: TextStyle(
          fontSize: 25,
          fontFamily: "El Messiri",
          fontWeight: FontWeight.w600,
          color: Color(0xff242424),
        ),
        bodyMedium: TextStyle(
          fontSize: 25,
          fontFamily: "El Messiri",
          fontWeight: FontWeight.w400,
          color: Color(0xff242424),
        ),
        bodySmall: TextStyle(
          fontSize: 20,
          fontFamily: "El Messiri",
          fontWeight: FontWeight.w400,
          color: Color(0xff242424),
        ),
        displaySmall:  TextStyle(
          fontSize: 12,
          fontFamily: "El Messiri",
          fontWeight: FontWeight.w400,
          color: Color(0xff242424),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xffB7935F),
        selectedItemColor: Color(0xff242424),
        unselectedItemColor: Color(0xffF8F8F8),
        selectedIconTheme: IconThemeData(
          color: Color(0xff242424),
          size: 40,
        ),
        unselectedIconTheme: IconThemeData(
          color: Color(0xffF8F8F8),
          size: 28,
        ),
        selectedLabelStyle: TextStyle(
          fontSize: 16,
        ),
        showUnselectedLabels: false,
      ));

}
