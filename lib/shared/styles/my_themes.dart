import 'package:flutter/material.dart';
import 'package:todo/shared/styles/colors.dart';

class MyThemeData {

  static final ThemeData lightTheme = ThemeData(
    primaryColor: PrimaryColor,
    scaffoldBackgroundColor: OnprimaryColor,
    appBarTheme: AppBarTheme(
        centerTitle: true,
        color: PrimaryColor,
        elevation: 0,
        iconTheme: IconThemeData(color: WhiteColor)),
    textTheme: TextTheme(
      headline1: TextStyle(
        fontSize: 30,
        color: WhiteColor,
        fontWeight: FontWeight.w700,
      ),
      headline2: TextStyle(
        fontSize: 25,
        color: PrimaryColor,
        fontWeight: FontWeight.w400,
      ),
      headline3: TextStyle(
        fontSize: 25,
        color: WhiteColor,
        fontWeight: FontWeight.w400,
      ),
      subtitle1: TextStyle(
        fontSize: 25,
        color: BlackColor,
        fontWeight: FontWeight.w500,
      ),
      bodyText1: TextStyle(
        fontSize: 20,
        color: BlackColor,
        fontWeight: FontWeight.w500,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: PrimaryColor, unselectedItemColor: GreyColor),
  );
}