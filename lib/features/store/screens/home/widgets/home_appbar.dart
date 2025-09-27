import 'package:get/get.dart';
import 'package:wearit/components/widgets/buttons/icon_button_with_badge.dart';
import 'package:wearit/features/personalization/controllers/user_controller.dart';
import 'package:wearit/features/store/screens/notification/notification.dart';
import 'package:wearit/utils/constants/text_string.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:wearit/utils/helpers/helper.dart';
import 'package:wearit/utils/popups/shimmer.dart';

class THomeAppBar extends StatelessWidget {
  const THomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);
    final controller = Get.put(UserController());

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
          Obx(
            () { 
              if (controller.profileLoading.value) {
                return const TShimmerEffect(width: 80, height: 15);
              }
              return Text(
                controller.user.value.name,
                style: Theme.of(context)
                    .textTheme
                    .headlineSmall!
                    .copyWith(color: darkMode ? Colors.black : Colors.white),
              );
            }
          ),
        ],
      ),
      actions: [
        TIconButtonWithBadge(
          icon: Iconsax.notification,
          badgeText: '99',
          onPressed: () => Get.to(() => const NotificationScreen()),
        ),
      ],
    );
  }
}
