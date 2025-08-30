import 'package:flutter/material.dart';
import 'package:wearit/components/styles/spacing_style.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/components/widgets/brands/brand_card.dart';
import 'package:wearit/components/widgets/headers/section_header.dart';
import 'package:wearit/components/widgets/products/product_filter_sort/product_filter_sort.dart';
import 'package:wearit/utils/constants/sizes.dart';

class BrandProfileScreen extends StatelessWidget {
  const BrandProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        backButtonVisibility: true,
        title: Text('New Balance', style: Theme.of(context) .textTheme .headlineLarge! .copyWith(fontWeight: FontWeight.w600), maxLines: 1, overflow: TextOverflow.ellipsis,),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingDefault,
          child: Column(
            children: [
              TBrandCard(),
              const SizedBox(height: TSizes.sectionGap,),
          
              TSectionHeader(title: 'Products'),
              const SizedBox(height: TSizes.defaultGap,),
              
              TProductWithFilterSort(showFilter: false,),
            ],
          ),
        ),
      ),
    );
  }
}