import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:wearit/components/widgets/brands/brand_text.dart';
import 'package:wearit/components/widgets/buttons/icon_button.dart';
import 'package:wearit/components/widgets/containers/rounded_container.dart';
import 'package:wearit/components/widgets/images/circular_image.dart';
import 'package:wearit/features/store/screens/product_reviews/widgets/rating_bar_indicator.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TProductReviewCard extends StatelessWidget {
  const TProductReviewCard({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        /// Header
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            /// User Avatar & Name
            Row(
              children: [
                TCircularImage(imagePath: TImages.iAvatarGirl, overlayColor: Colors.transparent,),
                const SizedBox(width: TSizes.defaultGap,),
                Text('Michael Jackson', style: Theme.of(context).textTheme.bodyLarge,),
              ],
            ),
        
            /// More Button
            TIconButton(icon: Icons.more_horiz)
          ],
        ),
        const SizedBox(height: TSizes.defaultGap,),


        /// Reviews
        Row(
          children: [
            TRatingBarIndicator(rating: 4),
            const SizedBox(width: TSizes.defaultGap,),
            Text('16 Jul 2025', style: Theme.of(context).textTheme.bodySmall!.copyWith(color: TColors.textSecondary),),
          ],
        ),

        /// Product Variation
        Text('Navy - 38.5', style: Theme.of(context).textTheme.bodyMedium!.copyWith(color: TColors.textSecondary),),
        const SizedBox(height: TSizes.defaultGap,),
        
        ReadMoreText(
          'The shoes is comfortable, especially when it used to run. I love it so much!',
          trimLines: 2,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'show more',
          trimExpandedText: 'show less',
          moreStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: TColors.primaryColor),
          lessStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: TColors.textSecondary),
        ),
        const SizedBox(height: TSizes.defaultGap,),

        /// Seller Response
        TRoundedContainer(
          padding: EdgeInsets.all(TSizes.md),
          borderVisibility: true,
          borderColor: darkMode ? TColors.borderSecondary.withAlpha(120) : null,
          backgroundColor: darkMode ? TColors.containerDark : TColors.containerLightGrey,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TBrandName(brandName: 'New Balance'),
                  const SizedBox(width: TSizes.defaultGap,),
                  Text('16 Jul 2025', style: Theme.of(context).textTheme.bodySmall!.copyWith(color: TColors.textSecondary),),

                ],
              ),
              const SizedBox(height: TSizes.defaultGap,),
              
              ReadMoreText(
                'Thank you so much for your positive reviews! We glad that the product is into your liking. We are looking forward for your next purchase.',
                trimLines: 2,
                trimMode: TrimMode.Line,
                trimCollapsedText: ' show more',
                trimExpandedText: ' show less',
                moreStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: TColors.primaryColor),
                lessStyle: const TextStyle(fontSize: 12, fontWeight: FontWeight.w400, color: TColors.textSecondary),
              ),
            ],
          ),
        )
      ],
    );
  }
}