import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/components/widgets/brands/brand_text.dart';
import 'package:wearit/components/widgets/buttons/icon_button_with_badge.dart';
import 'package:wearit/components/widgets/containers/rounded_container.dart';
import 'package:wearit/components/widgets/headers/section_header.dart';
import 'package:wearit/components/widgets/images/circular_image.dart';
import 'package:wearit/components/widgets/search/search_bar.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);

    return Scaffold(
      appBar: TAppBar(
        title: Text(
          'Shop',
          style: Theme.of(context)
              .textTheme
              .headlineLarge!
              .copyWith(fontWeight: FontWeight.w600),
        ),
        actions: [
          TIconButtonWithBadge(icon: Iconsax.shopping_cart, badgeText: '5'),
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, innerBoxIsScrollable) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              pinned: true,
              floating: true,
              backgroundColor:
                  darkMode ? TColors.backgroundDark : TColors.backgroundLight,
              expandedHeight: 440,
              flexibleSpace: Padding(
                padding: EdgeInsetsGeometry.symmetric(
                    horizontal: TSizes.horizontalPadding),
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  children: [
                    const SizedBox(
                      height: TSizes.sectionGap,
                    ),
                    TSearchBar(
                      borderVisible: true,
                      padding: 0,
                      backgroundVisible: false,
                    ),
                    const SizedBox(
                      height: TSizes.sectionGap,
                    ),
                    TSectionHeader(title: 'Featured Brands', buttonVisible: true,),
                    const SizedBox( height: TSizes.defaultGap, ),
                    TRoundedContainer(
                      padding: const EdgeInsets.all(TSizes.lg),
                      borderVisibility: true,
                      backgroundColor: Colors.transparent,
                      child: Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          // TCircularImage(imagePath: TImages.iNewBalance,),
                          const SizedBox( width: TSizes.defaultGap, ),
                          TBrandName(brandName: 'New balance', textColor: darkMode ? Colors.white : Colors.black,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ];
        },
        body: Column(
          children: [],
        ),
      ),
    );
  }
}

