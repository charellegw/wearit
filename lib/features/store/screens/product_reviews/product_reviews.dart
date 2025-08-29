import 'package:flutter/material.dart';
import 'package:wearit/components/styles/spacing_style.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/features/store/screens/product_reviews/widgets/product_review_card.dart';
import 'package:wearit/features/store/screens/product_reviews/widgets/rating_details.dart';
import 'package:wearit/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        backButtonVisibility: true,
        title: Text('Ratings & Reviews', style: Theme.of(context) .textTheme .headlineLarge! .copyWith(fontWeight: FontWeight.w600), ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingDefault,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'All ratings and reviews are from customers who purchased this product. Your feedback helps others make the right choice.',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(height: TSizes.defaultGap,),
              
              /// Rating Section
              TRatingDetails(),
              const SizedBox(height: TSizes.sectionGap,),

              /// Review Section
              ListView.separated(
                shrinkWrap: true,
                itemCount: 4,
                separatorBuilder: (_, __) => const SizedBox(height: TSizes.gridGap,),
                itemBuilder: (_, index) => const TProductReviewCard(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

