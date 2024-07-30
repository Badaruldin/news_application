import 'package:flutter/material.dart';

class BTheme{
  BTheme._();
  
  static final ThemeData lightTheme =ThemeData(
    brightness: Brightness.light,
    useMaterial3: true,
  );

  static final ThemeData darkTheme =ThemeData(
    brightness: Brightness.dark,
    useMaterial3: true, 
  );
}