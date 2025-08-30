import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TButtonBadge extends StatelessWidget {
  const TButtonBadge({
    super.key, required this.badgeText,
  });

  final String badgeText;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 0,
      right: 0,
      child: Container(
        padding: const EdgeInsets.all(TSizes.sm),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(TSizes.md),
        ),
        constraints: const BoxConstraints(
          minWidth: 19,
          minHeight: 19,
        ),
        child: Text(
          badgeText,
          style: Theme.of(context).textTheme.labelMedium!.copyWith(color: TColors.textWhite, fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}