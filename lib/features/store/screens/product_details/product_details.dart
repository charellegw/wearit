import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/styles/spacing_style.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/components/widgets/buttons/icon_button_with_badge.dart';
import 'package:wearit/components/widgets/containers/rounded_container.dart';
import 'package:wearit/components/widgets/headers/section_header.dart';
import 'package:wearit/components/widgets/products/product_element/label_product.dart';
import 'package:wearit/components/widgets/products/product_element/price_product.dart';
import 'package:wearit/components/widgets/search/search_bar.dart';
import 'package:wearit/features/store/screens/cart/cart.dart';
import 'package:wearit/features/store/screens/product_details/product_meta_data.dart';
import 'package:wearit/features/store/screens/product_details/widgets/product_image_slider.dart';
import 'package:wearit/features/store/screens/product_details/widgets/rating_share.dart';
import 'package:wearit/features/store/screens/product_reviews/product_reviews.dart';
import 'package:wearit/features/store/screens/product_reviews/widgets/product_review_card.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';
// import 'package:wearit/utils/helpers/helper.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // final darkMode = THelper.isDarkMode(context);
    return Scaffold(
      // appBar: TAppBar(
      //   backButtonVisibility: true,
      //   title: Expanded(child: TSearchBar(borderVisible: true,)),
      //   actions: [
      //     // TIconButtonWithBadge(icon: Iconsax.shopping_cart, badgeText: '5', borderVisibility: true, onPressed: () => Get.to(() => const CartScreen()),)
      //   ],
      // ),
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
                  TRatingAndShare(),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // TLabelProduct(text: '-20%', backgroundColor: TColors.errorRed, borderColor: TColors.errorRed, textColor: THelper.isDarkMode(context) ? Colors.white : Colors.black,),
                      // const SizedBox(width: TSizes.textGap,),
                      Text('New Balance 530', maxLines: 2, overflow: TextOverflow.ellipsis, style: Theme.of(context).textTheme.headlineMedium!.copyWith(fontWeight: FontWeight.w500),),
                    ],
                  ),
                  const SizedBox(height: TSizes.defaultGap,),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TPriceProduct(text: '119', textSize: 20,),
                      const SizedBox(width: TSizes.textGap,),
                      TPriceProduct(text: '142.8', isDiscountPrice: true, textSize: 14,),
                    ],
                  ),
                  const SizedBox(height: TSizes.sectionGap,),



                  /// Rating & Review
                  SizedBox(
                    width: double.infinity,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TSectionHeader(title: 'Ratings & Reviews (2,2k)', buttonVisible: true, buttonOnPressed: () => Get.to(() => const ProductReviewsScreen()),),
                        const SizedBox(height: TSizes.defaultGap,),
                        TProductReviewCard(),
                      ],
                    )
                  ),
                ],
              ),
            ),
          ],
        ),
        
        
        
        // Column(
        //   children: [

        //     Padding(
        //       padding: TSpacingStyle.paddingDefault,
        //       child: Column(
        //         children: [
        //           TProductMetaData(),
        //         ],
        //       ),
        //     ),
        //   ],
        // ),
      ),
    );
  }
}

