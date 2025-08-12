import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/buttons/button_badge.dart';
import 'package:wearit/components/widgets/buttons/icon_button.dart';

class TIconButtonWithBadge extends StatelessWidget {
  const TIconButtonWithBadge({
    super.key, 
    required this.icon, 
    this.badgeText, 
    this.backgroundColor, 
    this.iconColor, 
    this.padding, 
    this.onPressed,
  });

  final IconData icon;
  final Color? backgroundColor, iconColor;
  final EdgeInsetsGeometry? padding;
  final void Function()? onPressed;

  final String? badgeText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        TIconButton(
          icon: icon,
          onPressed: onPressed,
          padding: padding,
          backgroundColor: backgroundColor,
          iconColor: iconColor,
        ),
        if (badgeText != null)
          TButtonBadge(
            badgeText: badgeText!,
          ),
      ],
    );
  }
}
