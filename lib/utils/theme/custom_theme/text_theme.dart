import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black), //H3
    headlineMedium: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w700, color: Colors.black), //H5 = 16
    headlineSmall: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black), //H6
    bodyLarge: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.black), //body 16
    bodyMedium: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.black), //body 14
    bodySmall: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.black), //body 12
    labelLarge: const TextStyle().copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.black), //body 10
    labelMedium: const TextStyle().copyWith(fontSize: 8, fontWeight: FontWeight.w500, color: Colors.black), //body 8
    
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white), //H3
    headlineMedium: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w700, color: Colors.white), //H5
    headlineSmall: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white), //H6
    bodyLarge: const TextStyle().copyWith(fontSize: 16, fontWeight: FontWeight.w600, color: Colors.white), //body 16
    bodyMedium: const TextStyle().copyWith(fontSize: 14, fontWeight: FontWeight.w500, color: Colors.white), //body 14
    bodySmall: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white), //body 12
    labelLarge: const TextStyle().copyWith(fontSize: 10, fontWeight: FontWeight.w500, color: Colors.white), //body 10
    labelMedium: const TextStyle().copyWith(fontSize: 8, fontWeight: FontWeight.w500, color: Colors.white), //body 8
  );
}