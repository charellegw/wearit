import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/components/styles/spacing_style.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/components/widgets/brands/brand_card.dart';
import 'package:wearit/components/widgets/headers/section_header.dart';
import 'package:wearit/components/widgets/layouts/grid_layout.dart';
import 'package:wearit/features/store/screens/brands/brand_profile.dart';
import 'package:wearit/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        backButtonVisibility: true,
        title: Text('Featured Brands', style: Theme.of(context) .textTheme .headlineLarge! .copyWith(fontWeight: FontWeight.w600), ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingDefault,
          child: Column(
            children: [
              TSectionHeader(
                title: 'All Brands'
              ),
              const SizedBox(height: TSizes.sectionGap,),
              TGridLayout(
                itemCount: 7, 
                itemBuilder: (_, index) => TBrandCard(onTap: () => Get.to(() => const BrandProfileScreen()),),
                mainAxisExtent: 60,
              ),
            ],
          ),
        ),
      ),
    );
  }
}