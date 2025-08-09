import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/buttons/button_badge.dart';
import 'package:wearit/components/widgets/buttons/icon_button.dart';

class TIconButtonWithBadge extends StatelessWidget {
  const TIconButtonWithBadge({
    super.key, required this.icon, required this.badgeText,
  });

  final IconData icon;
  final String badgeText;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        TIconButton(
          icon: icon,
        ),
        TButtonBadge(
          badgeText: badgeText,
        ),
      ],
    );
  }
}
