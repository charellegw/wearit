import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TElevatedButtonTheme {
  TElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: TColors.buttonPrimary,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: BorderSide.none,
      padding: const EdgeInsets.symmetric(vertical: 10),
      minimumSize: const Size(00, 50),
      textStyle: const TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.buttonRadius)),
    )
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.blue,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: TColors.buttonPrimary),
      padding: const EdgeInsets.symmetric(vertical: 10),
      minimumSize: const Size(00, 50),
      textStyle: const TextStyle(fontSize: 14, color: Colors.white, fontWeight: FontWeight.w500),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(TSizes.buttonRadius)),
    )
  );
}