import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TRoundedContainer extends StatelessWidget {
  const TRoundedContainer( 
      {super.key,
      this.width,
      this.height,
      this.radius = TSizes.cardRadius,
      this.backgroundColor,
      this.borderVisibility = false,
      this.borderColor = TColors.borderSecondary,
      this.child,
      this.padding,
      this.margin
    });

  final double? width, height;
  final double radius;
  final Color? backgroundColor;
  final bool borderVisibility;
  final Color borderColor;
  final Widget? child;
  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);
    return Container(
      width: width,
      height: height,
      padding: padding,
      margin: margin,
      decoration: BoxDecoration(
        color: backgroundColor ?? (darkMode ? TColors.containerDark : TColors.containerLight),
        borderRadius: BorderRadius.circular(radius),
        border: borderVisibility ? Border.all(color: borderColor, width: 1) : null,
      ),
      child: child,
    );
  }
}
