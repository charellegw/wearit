import 'package:flutter/material.dart';

class TColors {
  TColors._();

  //basic color
  static const Color primaryColor = Color(0XFF0392F2);

  //background
  static const Color backgroundLight = Color(0XFFEEF2F9);
  static const Color backgroundDark = Color(0XFF2D2E31);

  //text
  static const Color textPrimary = Colors.black;
  static const Color textSecondary = Color(0XFFA1AAB2);
  static const Color textWhite = Colors.white;

  // Container Background
  static const Color containerLight = Colors.white;
  static const Color containerDark = Colors.black;

  // Button Background
  static const Color buttonPrimary = primaryColor;
  static const Color buttonSecondary = Colors.white;
  // static const Color buttonDisabled = Color();

  // Border Line
  static const Color borderPrimary = primaryColor;
  static const Color borderSecondary = Color(0XFFECECEC);

  // System
  static const Color errorRed = Color(0XFFFF6F79);
  static const Color errorBackground = Color(0XFFFEE8EA);
  static const Color cautionYellow = Color(0XFFF7CC21);
  static const Color cautionBackground = Color(0XFFFCF7D7);
  static const Color successGreen = Color(0XFF00C3B3);
  static const Color successBackground = Color(0XFFD7FCF9);
}