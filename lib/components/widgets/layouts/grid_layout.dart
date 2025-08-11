import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/products/product_cards/product_vertical_card.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TGridLayout extends StatelessWidget {
  const TGridLayout({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 9,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: TSizes.gridGap,
        crossAxisSpacing: TSizes.gridGap,
        mainAxisExtent: 311,
      ), 
      itemBuilder: (_, index) => TProductVerticalCard());
  }
}
