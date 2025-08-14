import 'package:wearit/components/widgets/buttons/icon_button_with_badge.dart';
import 'package:wearit/utils/constants/text_string.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:wearit/utils/helpers/helper.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.appBarTitle,
            style: Theme.of(context)
                .textTheme
                .labelLarge!
                .copyWith(color: darkMode ? Colors.black : Colors.white),
          ),
          Text(
            TTexts.appBarUsername,
            style: Theme.of(context)
                .textTheme
                .headlineSmall!
                .copyWith(color: darkMode ? Colors.black : Colors.white),
          ),
        ],
      ),
      actions: [
        TIconButtonWithBadge(
          icon: Iconsax.notification,
          badgeText: '99',
        ),
      ],
    );
  }
}
