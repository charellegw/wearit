import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/headers/home_header.dart';
import 'package:wearit/components/widgets/products/product_cards/product_vertical_card.dart';
import 'package:wearit/components/widgets/search/search_bar.dart';
import 'package:wearit/features/shop/screens/home/widgets/home_appbar.dart';
import 'package:wearit/features/shop/screens/home/widgets/home_categories.dart';
import 'package:wearit/features/shop/screens/home/widgets/promo_slider.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TAppHeader(
              child: Column(
                children: [
                  THomeAppBar(),
                  const SizedBox(
                    height: TSizes.sectionGap,
                  ),
                  TSearchBar(),
                  const SizedBox( height: TSizes.defaultGap, ),
                  THomeCategories(),
                  const SizedBox(
                    height: TSizes.sectionGap,
                  ),
                ],
              ),
            ),

            // body
            Padding(
              padding: const EdgeInsets.symmetric( horizontal: TSizes.horizontalPadding),
              child: Column(
                children: [
                  TPromoSlider(banners: [TImages.banner1, TImages.banner2, TImages.banner3],),
                  const SizedBox( height: TSizes.sectionGap, ),
                  TSectionHeader(title: 'Popular Now'),
                  const SizedBox( height: TSizes.defaultGap, ),
                  TProductVerticalCard(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
