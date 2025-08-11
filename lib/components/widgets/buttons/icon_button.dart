import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TIconButton extends StatelessWidget {
  const TIconButton({
    super.key,
    required this.icon,
    this.width = TSizes.iconButtonSize,
    this.height = TSizes.iconButtonSize,
    this.radius = TSizes.buttonRadius,
    this.backgroundColor,
    this.iconColor,
    this.iconSize = TSizes.iconSm,
    this.padding,
    this.onPressed,
  });

  final IconData icon;
  final double width, height, radius, iconSize;
  final Color? backgroundColor, iconColor;
  final EdgeInsetsGeometry? padding;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);

    return Container(
      width: width,
      height: height,
      padding: padding,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: backgroundColor ?? (darkMode ? TColors.backgroundDark : TColors.buttonSecondary),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon:  Icon(
          icon,
          size: iconSize,
          color: iconColor ?? (darkMode ? Colors.white : Colors.black),
        ) ,
      ),
    );
  }
}
