import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/components/widgets/app_bar/tab_bar.dart';
import 'package:wearit/components/widgets/brands/brand_text.dart';
import 'package:wearit/components/widgets/buttons/icon_button_with_badge.dart';
import 'package:wearit/components/widgets/containers/rounded_container.dart';
import 'package:wearit/components/widgets/headers/section_header.dart';
import 'package:wearit/components/widgets/images/circular_image.dart';
import 'package:wearit/components/widgets/layouts/grid_layout.dart';
import 'package:wearit/components/widgets/products/product_cards/product_vertical_card.dart';
import 'package:wearit/components/widgets/search/search_bar.dart';
import 'package:wearit/features/store/screens/cart/cart.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);

    return DefaultTabController(
      length: 8,
      child: Scaffold(
        appBar: TAppBar(
          title: Text( 'Shop', style: Theme.of(context) .textTheme .headlineLarge! .copyWith(fontWeight: FontWeight.w600), ),
          actions: [
            TIconButtonWithBadge(icon: Iconsax.shopping_cart, badgeText: '5', onPressed: () => Get.to(() => const CartScreen()),),
          ],
        ),
        body: NestedScrollView(
          headerSliverBuilder: (_, innerBoxIsScrollable) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: darkMode ? TColors.backgroundDark : TColors.backgroundLight,
                expandedHeight: 340,
                flexibleSpace: Padding(
                  padding: EdgeInsetsGeometry.symmetric(horizontal: TSizes.horizontalPadding,),
                  child: ListView(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    children: [
                      const SizedBox( height: TSizes.sectionGap, ),
                      const TSearchBar(
                        borderVisible: true,
                        padding: 0,
                        backgroundVisible: false,
                      ),
                      const SizedBox( height: TSizes.sectionGap, ),
      
                      TSectionHeader(title: 'Featured Brands', buttonVisible: true, buttonOnPressed: (){},),
                      const SizedBox( height: TSizes.defaultGap, ),
                      
                      TGridLayout(itemCount: 4, mainAxisExtent: 50, itemBuilder: (_, index) {
                        return GestureDetector(
                          onTap: (){},
                          child: TRoundedContainer(
                            padding: const EdgeInsets.all(TSizes.sm),
                            borderVisibility: true,
                            borderColor: darkMode ? TColors.borderSecondary.withAlpha(120) : TColors.containerLight,
                            backgroundColor: darkMode ? TColors.containerDark : TColors.containerLight,
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Flexible(child: TCircularImage(imagePath: TImages.iNewBalance,)),
                                const SizedBox( width: TSizes.defaultGap, ),
                          
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      TBrandName(brandName: 'New balance', textColor: darkMode ? Colors.white : Colors.black,),
                                      Text(
                                        '133 products',
                                        overflow: TextOverflow.ellipsis,
                                        style: Theme.of(context).textTheme.labelMedium!.copyWith(color: TColors.textSecondary),
                                        textAlign: TextAlign.left,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      ),
                    ],
                  ),
                ),
      
                bottom: TTabBar(tabs: [
                  Tab(child: Text('All', style: TextStyle(fontSize: 12)),),
                  Tab(child: Text('Shirts', style: TextStyle(fontSize: 12)),),
                  Tab(child: Text('Outers', style: TextStyle(fontSize: 12)),),
                  Tab(child: Text('Pants', style: TextStyle(fontSize: 12)),),
                  Tab(child: Text('Dress', style: TextStyle(fontSize: 12)),),
                  Tab(child: Text('Bags', style: TextStyle(fontSize: 12)),),
                  Tab(child: Text('Shoes', style: TextStyle(fontSize: 12)),),
                  Tab(child: Text('Accessories', style: TextStyle(fontSize: 12)),),
                ],),
              )
            ];
          },
          body: TabBarView(
            children: List.generate(8, (index) {
              return ListView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: TSizes.defaultGap, horizontal: TSizes.horizontalPadding),
                    child: Column(
                      children: [
                        const SizedBox(height: TSizes.defaultGap,),
                        TGridLayout(itemCount: 6, itemBuilder: (_, index) => TProductVerticalCard(), ),
                        const SizedBox(height: TSizes.sectionGap,),
                  
                        TSectionHeader(title: 'You might like', buttonOnPressed: (){},),
                        const SizedBox(height: TSizes.defaultGap,),

                        TGridLayout(itemCount: 4, itemBuilder: (_, index) => TProductVerticalCard(), ),
                        const SizedBox(height: TSizes.defaultGap,),
                  
                      ],
                    ),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
    );
  }
}

