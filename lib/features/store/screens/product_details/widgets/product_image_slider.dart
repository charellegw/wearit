import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/components/widgets/buttons/icon_button.dart';
import 'package:wearit/components/widgets/buttons/icon_button_with_badge.dart';
import 'package:wearit/components/widgets/containers/curved_clip_path.dart';
import 'package:wearit/components/widgets/images/image_thumbnail.dart';
import 'package:wearit/features/store/screens/cart/cart.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/device/device_utils.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TProductImageSlider extends StatelessWidget {
  const TProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);
    return TCurvedClipPath(
      child: Container(
        color: darkMode ? TColors.backgroundDark : TColors.backgroundLight,
        child: Stack(
          children: [
            TImageThumbnail(
              imagePath: TImages.product1,
              fit: BoxFit.cover,
              borderRadius: 0,
              width: TDeviceUtils.getScreenWidth(context),
              height: TDeviceUtils.getScreenWidth(context),
              backgroundColor: darkMode ? TColors.containerLightGrey : TColors.containerLight,
            ),

            TAppBar(
              backButtonVisibility: true,
              backButtonColor: Colors.black,
              actions: [
                TIconButton(icon: Icons.share, shadowVisibility: true, onPressed: (){},),
                const SizedBox(width: TSizes.buttonGap/2,),
                TIconButtonWithBadge(icon: Iconsax.shopping_cart, badgeText: '5', shadowVisibility: true, onPressed: () => Get.to(() => const CartScreen()),),
                const SizedBox(width: TSizes.buttonGap/2,),
                TIconButton(icon: Iconsax.heart5, iconColor: Colors.red, shadowVisibility: true, onPressed: (){},),
              ],
            ),
          ],
        ),
      ),
    );
  }
}