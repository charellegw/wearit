import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/containers/rounded_container.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TLabelProductCard extends StatelessWidget {
  const TLabelProductCard({
    super.key,
    required this.text,
    this.icon,
    this.textColor = Colors.black,
    this.backgroundColor = Colors.white,
    this.borderColor = TColors.borderSecondary,
    this.borderVisibility = true,
    this.iconColor = Colors.black,
    this.iconFilled = 1,
    this.colorAlpha = 60,
  });

  final String text;
  final Color textColor, backgroundColor, borderColor;
  final int colorAlpha;
  final IconData? icon;
  final Color? iconColor;
  final bool borderVisibility;
  final double iconFilled;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      radius: TSizes.radiusSm,
      borderVisibility: borderVisibility,
      borderColor: borderColor,
      backgroundColor: backgroundColor.withAlpha(colorAlpha),
      padding: const EdgeInsets.all(TSizes.xs),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null) ...[
            Icon(
              icon,
              color: iconColor,
              size: 11,
              fill: iconFilled,
            ),
            const SizedBox(
              width: TSizes.textGap,
            ),
          ],
          Text(
            text,
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: textColor),
          ),
        ],
      ),
    );
  }
}
