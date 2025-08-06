import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/theme/custom_theme/text_theme.dart';

class TNavbarTheme {
  TNavbarTheme._();

  static final NavigationBarThemeData lightNavbarTheme = NavigationBarThemeData(
    labelTextStyle: WidgetStateProperty.resolveWith(
      (states) {
        return states.contains(WidgetState.selected)
            ? TTextTheme.lightTextTheme.labelLarge!.copyWith(color: TColors.primaryColor, fontWeight: FontWeight.w600)
            : TTextTheme.lightTextTheme.labelLarge!.copyWith(color: Colors.black87);
      },
    ),
    height: TSizes.navbarHeight,
    elevation: 0,
    backgroundColor: TColors.backgroundLight,
    indicatorColor: TColors.backgroundDark.withAlpha(20),
  );

  static final NavigationBarThemeData darkNavbarTheme = NavigationBarThemeData(
    labelTextStyle: WidgetStateProperty.resolveWith(
      (states) {
        return states.contains(WidgetState.selected)
            ? TTextTheme.darkTextTheme.labelLarge!.copyWith(color: TColors.primaryColor, fontWeight: FontWeight.w600)
            : TTextTheme.darkTextTheme.labelLarge!.copyWith(color: Colors.grey);
      },
    ),
    height: TSizes.navbarHeight,
    elevation: 0,
    backgroundColor: TColors.backgroundDark,
    indicatorColor: TColors.backgroundLight.withAlpha(20),
  );
}
