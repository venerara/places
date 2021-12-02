import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:places/ui/screen/res/colors.dart';

final lightTheme = ThemeData(
  primaryColor: colorWhiteGrey,
  primaryColorDark: colorBlack,
  primaryColorLight: colorWhite,
  scaffoldBackgroundColor: colorWhite,
  backgroundColor: colorWhiteGrey, //фон контента в карточке
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: colorBlack,
    ),
    headline2: TextStyle(
        color: colorBlackGrey, fontSize: 14, fontWeight: FontWeight.bold),
    headline3: TextStyle(color: colorGrey, fontSize: 14),
    headline4: TextStyle(
      color: colorGrey,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    headline5: TextStyle(
      color: colorGrey,
      fontSize: 16,
    ),
    headline6: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: colorWhite,
    ),
    bodyText2: TextStyle(color: colorBlack),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: colorWhite,
    selectedItemColor: colorBlackGrey,
    unselectedItemColor: colorBlackGrey,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: colorWhite,
    titleTextStyle: TextStyle(
      color: colorBlack,
      fontSize: 26,
      fontWeight: FontWeight.bold,
    ),
    elevation: 0,
  ),
  tabBarTheme: TabBarTheme(
    indicator: BoxDecoration(
      borderRadius: BorderRadius.circular(
        25.0,
      ),
      color: colorTabbar,
    ),
    labelStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    labelColor: colorWhite,
    unselectedLabelStyle: const TextStyle(
      fontSize: 16,
    ),
    unselectedLabelColor: colorGrey,
  ),
  iconTheme: const IconThemeData(
    color: colorBlackGrey,
  ),
);

final darkTheme = ThemeData(
  primaryColor: colorBlack,
  primaryColorDark: colorWhite,
  primaryColorLight: colorBlack,
  scaffoldBackgroundColor: colorBlackBackground,
  backgroundColor: colorBlack, //фон контента в карточке
  textTheme: const TextTheme(
    headline1: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: colorWhite,
    ),
    headline2: TextStyle(
        color: colorBlackGrey, fontSize: 14, fontWeight: FontWeight.bold),
    headline3: TextStyle(color: colorGrey, fontSize: 14),
    headline4: TextStyle(
      color: colorGrey,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
    headline5: TextStyle(
      color: colorGrey,
      fontSize: 16,
    ),
    headline6: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.bold,
      color: colorWhite,
    ),
    bodyText2: TextStyle(color: colorWhite),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: colorBlackBackground,
    selectedItemColor: colorWhite,
    unselectedItemColor: colorWhite,
  ),
  appBarTheme: const AppBarTheme(
    backgroundColor: colorBlackBackground,
    titleTextStyle: TextStyle(
      color: colorWhite,
      fontSize: 28,
      fontWeight: FontWeight.bold,
    ),
    elevation: 0,
  ),
  tabBarTheme: TabBarTheme(
    indicator: BoxDecoration(
      borderRadius: BorderRadius.circular(
        25.0,
      ),
      color: colorBlack,
    ),
    labelStyle: const TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
    labelColor: colorWhite,
    unselectedLabelStyle: const TextStyle(
      fontSize: 16,
    ),
    unselectedLabelColor: colorGrey,
  ),
  iconTheme: const IconThemeData(
    color: colorWhite,
  ),
);
