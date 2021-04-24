import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart' show GoogleFonts;

import '../constants/contants.dart';

const AppBarTheme appBarTheme = AppBarTheme(
  elevation: 0,
  color: Colors.white,
  iconTheme: const IconThemeData(color: Colors.black),
  textTheme: TextTheme(
    headline6: TextStyle(
      color: const Color(0xff333333),
      fontSize: 22,
      fontWeight: FontWeight.w700,
    ),
  ),
);

const TextTheme textTheme = TextTheme(
  bodyText1: const TextStyle(color: kTextColor),
  bodyText2: const TextStyle(color: kTextColor),
);

const SystemUiOverlayStyle uiStyle = SystemUiOverlayStyle(
  statusBarColor: Colors.white,
  statusBarBrightness: Brightness.dark,
  statusBarIconBrightness: Brightness.dark,
  systemNavigationBarColor: Colors.white,
  systemNavigationBarIconBrightness: Brightness.dark,
);

BottomNavigationBarThemeData bottomNavigationBarThemeData =
    BottomNavigationBarThemeData(
  elevation: 0.0,
  showUnselectedLabels: true,
  backgroundColor: Colors.white,
  selectedItemColor: Colors.black,
  unselectedItemColor: Colors.grey,
  selectedLabelStyle: TextStyle(color: kTextColor, fontSize: 11),
  unselectedLabelStyle: TextStyle(color: Colors.grey, fontSize: 10),
);

ThemeData theme = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  fontFamily: GoogleFonts.muli().fontFamily,
  appBarTheme: appBarTheme,
  textTheme: textTheme,
  bottomNavigationBarTheme: bottomNavigationBarThemeData,
  //inputDecorationTheme: inputDecorationTheme,
  visualDensity: VisualDensity.adaptivePlatformDensity,
);
