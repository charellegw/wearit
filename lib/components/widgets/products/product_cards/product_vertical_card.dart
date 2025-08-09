import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/widgets/buttons/icon_button.dart';
import 'package:wearit/components/widgets/containers/rounded_container.dart';
import 'package:wearit/components/widgets/images/image_slide.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';
// import 'package:wearit/utils/helpers/helper.dart';

class TProductVerticalCard extends StatelessWidget {
  const TProductVerticalCard({super.key});

  @override
  Widget build(BuildContext context) {
    // final darkMode = THelper.isDarkMode(context);

    return Container(
      width: 180,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.cardRadius),
        color: TColors.buttonSecondaryDark,
      ),
      child: Column(
        children: [
          TRoundedContainer(
            height: 180, 
            padding: const EdgeInsets.all(TSizes.md),
            child: Stack(
              children: [
                //Thumbnail
                TImageSlide(imagePath: TImages.product1, fit: BoxFit.cover, borderRadius: TSizes.cardRadius,),

                //Discount Tag
                Positioned(
                  top: 10,
                  left: 10,
                  child: TRoundedContainer(
                    radius: TSizes.radiusSm,
                    borderVisibility: true,
                    borderColor: TColors.errorRed,
                    backgroundColor: TColors.errorBackground,
                    padding: const EdgeInsets.all(TSizes.xs),
                    child: Text(
                      '20%',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.errorRed),
                    ),
                  ),
                ),

                //Wishlist icon button
                Positioned(
                  top: 10,
                  right: 10,
                  child: TIconButton(icon: Iconsax.heart),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}