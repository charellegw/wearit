import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/components/widgets/brands/brand_card.dart';
import 'package:wearit/components/widgets/headers/section_header.dart';
import 'package:wearit/components/widgets/products/products_grid_with_filters/product_grid_with_filters.dart';
import 'package:wearit/utils/constants/sizes.dart';

class BrandProfileScreen extends StatelessWidget {
  const BrandProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        backButtonVisibility: true,
        title: Text('Featured Brands', style: Theme.of(context) .textTheme .headlineLarge! .copyWith(fontWeight: FontWeight.w600), ),
      ),
      body: Column(
        children: [
          TBrandCard(),

          const SizedBox(height: TSizes.defaultGap,),
          const Divider(),
          const SizedBox(height: TSizes.defaultGap,),

          TSectionHeader(title: 'Products'),
          TProductGridWithFilters(),
        ],
      ),
    );
  }
}