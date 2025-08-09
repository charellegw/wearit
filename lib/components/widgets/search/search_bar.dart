import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/device/device_utils.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TSearchBar extends StatelessWidget {
  const TSearchBar({
    super.key,
    this.icon = Iconsax.search_normal,
    this.backgroundVisible = true,
    this.borderVisible = false,
    this.text = "Search in store",
  });

  final IconData icon;
  final bool backgroundVisible, borderVisible;
  final String text;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.horizontalPadding),
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
          color: !backgroundVisible ? Colors.transparent : darkMode? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(TSizes.textFieldRadius),
          border: borderVisible ? Border.all(color: TColors.borderSecondary) : null,
        ),
        child: Row(
          children: [
            Icon(
              icon,
              color: darkMode ? Colors.white : TColors.iconSecondary,
              size: TSizes.iconXs,
            ),
            const SizedBox(
              width: TSizes.defaultGap,
            ),
            Text(
              text,
              style: Theme.of(context).textTheme.bodySmall,
            )
          ],
        ),
      ),
    );
  }
}
