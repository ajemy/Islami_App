import 'package:flutter/material.dart';

class AppThemeManger {
  static const Color primaryColor=Color(0xffB7935F);
  static const Color darkPrimaryColor=Color(0xffFACC1D);
  static ThemeData lightThemeData = ThemeData(
      primaryColor: primaryColor,
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
        backgroundColor: primaryColor,
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
      ),
      dividerTheme: const DividerThemeData(
        color: primaryColor
      )
  );
  static ThemeData darkThemeData = ThemeData(
      primaryColor: darkPrimaryColor,
      appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          titleTextStyle: TextStyle(
            fontSize: 30,
            fontFamily: "El Messiri",
            fontWeight: FontWeight.bold,
            color: Color(0xffF8F8F8),
          ),
          centerTitle: true,
      ),
      scaffoldBackgroundColor: Colors.transparent,
      textTheme: const TextTheme(
        titleLarge: TextStyle(
          fontSize: 30,
          fontFamily: "El Messiri",
          fontWeight: FontWeight.bold,
          color: Color(0xffF8F8F8),
        ),
        bodyLarge: TextStyle(
          fontSize: 25,
          fontFamily: "El Messiri",
          fontWeight: FontWeight.w600,
          color: Color(0xffF8F8F8),
        ),
        bodyMedium: TextStyle(
          fontSize: 25,
          fontFamily: "El Messiri",
          fontWeight: FontWeight.w400,
          color: Color(0xffF8F8F8),
        ),
        bodySmall: TextStyle(
          fontSize: 20,
          fontFamily: "El Messiri",
          fontWeight: FontWeight.w400,
          color: Color(0xffF8F8F8),
        ),
        displaySmall:  TextStyle(
          fontSize: 12,
          fontFamily: "El Messiri",
          fontWeight: FontWeight.w400,
          color: Color(0xffF8F8F8),
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Color(0xff141A2E),
        selectedItemColor: darkPrimaryColor,
        unselectedItemColor: Color(0xffF8F8F8),
        selectedIconTheme: IconThemeData(
          color: darkPrimaryColor,
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
      ),
      dividerTheme: const DividerThemeData(
        color: darkPrimaryColor
      )
  );

}
