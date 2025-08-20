import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TTextFieldTheme {
  TTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    filled: true,
    fillColor: TColors.containerLight,
    hoverColor: TColors.containerLightGrey.withAlpha(70),
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.black,
    isDense: true,
    // constraints: const BoxConstraints.expand(height: 14.InputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: TColors.textSecondary),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: TColors.primaryColor, fontWeight: FontWeight.w500),
    contentPadding: EdgeInsets.all(TSizes.textFieldPadding),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.textFieldRadius),
      borderSide: BorderSide.none,
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.textFieldRadius),
      borderSide: BorderSide.none,
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.textFieldRadius),
      borderSide: const BorderSide(width: 1, color: TColors.borderSecondary),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.textFieldRadius),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.textFieldRadius),
      borderSide: const BorderSide(width: 1, color: Colors.orange),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: Colors.grey,
    suffixIconColor: Colors.grey,
    // constraints: const BoxConstraints.expand(height: 14.InputFieldHeight),
    labelStyle: const TextStyle().copyWith(fontSize: 12, fontWeight: FontWeight.w500, color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: TColors.primaryColor, fontWeight: FontWeight.w500),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.textFieldRadius),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.textFieldRadius),
      borderSide: const BorderSide(width: 1, color: Colors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.textFieldRadius),
      borderSide: const BorderSide(width: 1, color: Colors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.textFieldRadius),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(TSizes.textFieldRadius),
      borderSide: const BorderSide(width: 1, color: Colors.orange),
    ),
  );
}