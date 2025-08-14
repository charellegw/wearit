import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/components/widgets/buttons/icon_button.dart';
import 'package:wearit/components/widgets/buttons/icon_button_with_badge.dart';
import 'package:wearit/components/widgets/containers/curved_clip_path.dart';
import 'package:wearit/components/widgets/images/image_slide.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';
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
            TImageSlide(imagePath: TImages.product1, borderRadius: 0, height: 400, imagePadding: EdgeInsets.all(60),),
            
            Positioned(
              bottom: TSizes.bigSectionGap,
              right: TSizes.defaultGap,
              left: TSizes.defaultGap,
              child: SizedBox(
                height: 80,
                child: ListView.separated(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  physics: AlwaysScrollableScrollPhysics(),
                  itemCount: 6,
                  separatorBuilder: (_, __) => const SizedBox(width: TSizes.gridGap,),
                  itemBuilder: (_, index) => TImageSlide(
                    imagePath: TImages.product1,
                    fit: BoxFit.contain,
                    // height: 80,
                    width: 80,
                    padding: EdgeInsets.all(TSizes.md),
                    backgroundColor: darkMode
                        ? TColors.containerDark
                        : TColors.containerLight,
                    border: Border.all(color: TColors.borderSecondary),
                  ),
                
                ),
              ),
            ),
            
            TAppBar(
              backButtonVisibility: true,
              backButtonColor: Colors.black,
              actions: [
                TIconButtonWithBadge(icon: Iconsax.shopping_cart, badgeText: '4',),
                const SizedBox(width: TSizes.buttonGap/2,),
                TIconButton(icon: Iconsax.heart5, iconColor: Colors.red,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}