import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/components/styles/spacing_style.dart';
import 'package:wearit/components/widgets/brands/brand_card.dart';
import 'package:wearit/components/widgets/products/products_section.dart/recommendation_section.dart';
import 'package:wearit/features/store/screens/brands/brand_profile.dart';
import 'package:wearit/features/store/screens/checkout/checkout.dart';
import 'package:wearit/features/store/screens/product_details/product_meta_data.dart';
import 'package:wearit/features/store/screens/product_details/widgets/product_image_slider.dart';
import 'package:wearit/features/store/screens/product_details/widgets/product_review_section.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TProductImageSlider(),

            Padding(
              padding: TSpacingStyle.paddingDefault,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TProductMetaData(),
                  const SizedBox(height: TSizes.sectionGap,),

                  /// Rating & Review
                  TProductReviewSection(),
                  const SizedBox(height: TSizes.sectionGap,),

                  /// Brand
                  Stack(children: [
                    TBrandCard(onTap: () => Get.to(() => const BrandProfileScreen()),),
                    Positioned(right: TSizes.sm, top: 0, bottom: 0, child: Icon(Icons.keyboard_arrow_right)),
                  ]),
                  const SizedBox(height: TSizes.sectionGap,),

                  /// Recommendation
                  TRecommendationSection(),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: TSpacingStyle.paddingDefault,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            ElevatedButton(
              onPressed: () {},
                style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.all(TSizes.md),
                    backgroundColor: THelper.isDarkMode(context)
                        ? TColors.backgroundDark
                        : TColors.containerLight,
                    foregroundColor: TColors.primaryColor,
                    ),
              child: Text('Add to Cart')),
            
            const SizedBox(width: TSizes.buttonGap,),

            ElevatedButton(
              onPressed: () => Get.to(() => const CheckoutScreen()),
              style: ElevatedButton.styleFrom( padding: EdgeInsets.all(TSizes.md)),
              child: Text('Checkout Now')),
          ],
        ),
      ),
    );
  }
}

