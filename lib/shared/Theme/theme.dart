import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
 
 

ThemeData light = ThemeData(
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: Colors.white,
   appBarTheme: const AppBarTheme(
    titleSpacing: 20.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Color(0xFF1C5D99),
      statusBarIconBrightness: Brightness.dark
    ),
    backgroundColor: Color(0xFF1C5D99),
    elevation: 0.0,
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20.0,
      fontWeight: FontWeight.bold
    ),
   ) ,
   bottomNavigationBarTheme: const BottomNavigationBarThemeData(
   ),
);