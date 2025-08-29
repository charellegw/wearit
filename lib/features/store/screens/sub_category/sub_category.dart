import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/components/styles/spacing_style.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/components/widgets/headers/section_header.dart';
import 'package:wearit/components/widgets/images/image_thumbnail.dart';
import 'package:wearit/components/widgets/products/product_cards/product_horizontal_card.dart';
import 'package:wearit/features/store/screens/all_products/all_products.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';

class SubCategoryScreen extends StatelessWidget {
  const SubCategoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text( 'My Orders', style: Theme.of(context) .textTheme .headlineLarge! .copyWith(fontWeight: FontWeight.w600),),
        backButtonVisibility: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingDefault,
          child: Column(
            children: [
              const TImageThumbnail(imagePath: TImages.banner1, width: double.infinity,),
              const SizedBox(height: TSizes.sectionGap,),

              Column(
                children: [
                  TSectionHeader(
                    title: 'Trending Shoes',
                    buttonVisible: true,
                    buttonOnPressed: () =>
                        Get.to(() => const AllProductsScreen(title: 'Trending Shoes')),
                  ),
                  const SizedBox(height: TSizes.defaultGap,),
                  
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_,__) => const SizedBox(width: TSizes.gridGap,),
                      itemBuilder: (_, index) => TProductHorizontalCard()
                    ),
                  ),
                  const SizedBox(height: TSizes.sectionGap,),

                  TSectionHeader(
                    title: 'Sport Shoes',
                    buttonVisible: true,
                    buttonOnPressed: () =>
                        Get.to(() => const AllProductsScreen(title: 'Sport Shoes',)),
                  ),
                  const SizedBox(height: TSizes.defaultGap,),
                  
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (_,__) => const SizedBox(width: TSizes.gridGap,),
                      itemBuilder: (_, index) => TProductHorizontalCard()
                    ),
                  ),
                  const SizedBox(height: TSizes.sectionGap,),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}