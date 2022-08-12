import 'package:flutter/material.dart';

import 'colors.dart';

class MyThemeData {

  static final ThemeData lightTheme = ThemeData(
      primaryColor: PrimaryColor,
      scaffoldBackgroundColor: mainBackGroundColor,
      colorScheme: ColorScheme(
        primary: PrimaryColor,
        onPrimary: WhiteColor,
        secondary: GreenColor,
        onSecondary: WhiteColor,
        error: RedColor,
        onError: WhiteColor,
        onSurface: GreyColor,
        surface: WhiteColor,
        onBackground: WhiteColor,
        brightness: Brightness.light,
        background: mainBackGroundColor
      ),
      textTheme: TextTheme(
          headline1: TextStyle(
              fontSize: 22, color: WhiteColor, fontWeight: FontWeight.w700),
          headline2: TextStyle(
              fontSize: 18, color: PrimaryColor, fontWeight: FontWeight.w400),
          headline3: TextStyle(
            fontSize: 20,color: blackcolor,fontWeight: FontWeight.bold
          ),
      ),

      appBarTheme: AppBarTheme(
          backgroundColor: PrimaryColor,
          elevation: 0,
          iconTheme: IconThemeData(color: WhiteColor)),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: PrimaryColor
      ),
      bottomSheetTheme:BottomSheetThemeData(
        backgroundColor: Colors.transparent
      ) ,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: PrimaryColor,
        unselectedItemColor: GreyColor,
      ));

  // static final ThemeData darkTheme = ThemeData(
  //     primaryColor: standerdColorDark,
  //     textTheme: TextTheme(
  //         headline1: TextStyle(
  //             fontSize: 30, color: Colors.white, fontWeight: FontWeight.w700),
  //         headline2: TextStyle(
  //             fontSize: 25, color: yellowcolor, fontWeight: FontWeight.w400)),
  //     appBarTheme: AppBarTheme(
  //         backgroundColor: Colors.transparent,
  //         elevation: 0,
  //         iconTheme: IconThemeData(color: Colors.white)),
  //     bottomNavigationBarTheme: BottomNavigationBarThemeData(
  //       selectedItemColor: yellowcolor,
  //       unselectedItemColor: Colors.white,
  //     ));
}
