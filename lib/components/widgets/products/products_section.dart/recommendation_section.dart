import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/headers/section_header.dart';
import 'package:wearit/components/widgets/layouts/grid_layout.dart';
import 'package:wearit/components/widgets/products/product_cards/product_vertical_card.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TRecommendationSection extends StatelessWidget {
  const TRecommendationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TSectionHeader(title: 'You might like'),
        const SizedBox(height: TSizes.defaultGap,),
        TGridLayout(itemCount: 10, itemBuilder: (_, index) => const TProductVerticalCard()),
      ],
    );
  }
}

