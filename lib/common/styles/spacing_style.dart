import 'package:flutter/widgets.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TSpacingStyle {
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: TSizes.appBarHeight,
    left: TSizes.screenHorizontal,
    right: TSizes.screenHorizontal,
    bottom: TSizes.screenVertical,
  );

  static const EdgeInsetsGeometry paddingDefault = EdgeInsets.only(
    top: TSizes.defaultGap,
    left: TSizes.screenHorizontal,
    right: TSizes.screenHorizontal,
    bottom: TSizes.screenVertical,
  );
}
