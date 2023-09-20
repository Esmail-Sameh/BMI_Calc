import 'package:bmi_calc/constants/colors.dart';
import 'package:flutter/material.dart';

class Themes {

  static ThemeData light_Theme = ThemeData(
    primaryColor: AppColor.contaner_Color_light,
    primarySwatch: Colors.blue,
    scaffoldBackgroundColor: AppColor.background_light,
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      color: AppColor.background_light,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      titleTextStyle: TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
        fontSize: 15
      ),
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: Colors.black),
    ),
    iconTheme: IconThemeData(color: Colors.black),
  );

  static ThemeData dark_Theme = ThemeData(

    primaryColor: AppColor.contaner_Color_Dark,
    primarySwatch: Colors.purple,

    scaffoldBackgroundColor: AppColor.background_Dark,
    appBarTheme: AppBarTheme(
      elevation: 0,
      centerTitle: true,
      color: AppColor.background_Dark,
      iconTheme: IconThemeData(
        color: Colors.white,
      ),
      titleTextStyle: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 15
      ),
    ),
    textTheme: TextTheme(
      bodyMedium: TextStyle(color: Colors.white),
    ),
    iconTheme: IconThemeData(color: Colors.white),
  );
}
