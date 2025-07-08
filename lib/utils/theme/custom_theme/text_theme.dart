import 'package:flutter/material.dart';

class TTextTheme {
  TTextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.black),
    headlineMedium: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.black),
    headlineSmall: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black),
    
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 20, fontWeight: FontWeight.w700, color: Colors.white),
    headlineMedium: const TextStyle().copyWith(fontSize: 18, fontWeight: FontWeight.w700, color: Colors.white),
    headlineSmall: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.white),
  );
}