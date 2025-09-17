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
    this.borderColor,
    this.borderVisibility = false,
    this.shadowVisibility = false,
  });

  final IconData icon;
  final double width, height, radius, iconSize;
  final Color? backgroundColor, iconColor, borderColor;
  final EdgeInsetsGeometry? padding;
  final bool borderVisibility, shadowVisibility;
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
        border: borderVisibility ? Border.all(color: borderColor ?? (darkMode ? TColors.borderSecondary : TColors.containerLight)) : null,
        color: backgroundColor ?? (darkMode ? TColors.backgroundDark : TColors.containerLight),
        boxShadow: shadowVisibility ? [BoxShadow(color: Colors.black.withAlpha(30), offset: Offset(-3, 3), blurRadius: 3)] : null,
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
