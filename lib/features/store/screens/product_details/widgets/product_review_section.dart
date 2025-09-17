import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/components/widgets/containers/rounded_container.dart';
import 'package:wearit/components/widgets/headers/section_header.dart';
import 'package:wearit/features/store/screens/product_reviews/product_reviews.dart';
import 'package:wearit/features/store/screens/product_reviews/widgets/product_review_card.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TProductReviewSection extends StatelessWidget {
  const TProductReviewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TSectionHeader(title: 'Ratings & Reviews (2,2k)', buttonVisible: true, buttonOnPressed: () => Get.to(() => const ProductReviewsScreen()),),
        const SizedBox(height: TSizes.defaultGap,),
        TRoundedContainer(
          width: double.infinity,
          backgroundColor: THelper.isDarkMode(context) ? Colors.transparent : TColors.containerLight,
          padding: const EdgeInsets.all(TSizes.defaultGap),
          borderVisibility: true,
          borderColor: THelper.isDarkMode(context) ? TColors.borderSecondary.withAlpha(120) : TColors.containerLight,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TProductReviewCard(),
            ],
          )
        ),
      ],
    );
  }
}