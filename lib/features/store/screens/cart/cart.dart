import 'package:flutter/material.dart';
import 'package:wearit/components/styles/spacing_style.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/components/widgets/products/cart/add_remove_button.dart';
import 'package:wearit/components/widgets/products/cart/cart_item.dart';
import 'package:wearit/components/widgets/products/product_element/price_product.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        title: Text( 'Cart', style: Theme.of(context) .textTheme .headlineLarge! .copyWith(fontWeight: FontWeight.w600),),
      ),
      body: Padding(
        padding: TSpacingStyle.paddingDefault,
        child: ListView.separated(
          shrinkWrap: true,
          separatorBuilder: (_, __) => const SizedBox(height: TSizes.gridGap,),
          itemCount: 10,
          itemBuilder: (_, index) => Column(
            children: [
              TCartItem(),
              const SizedBox(height: TSizes.defaultGap,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      const SizedBox(width: 80,),
                      TPriceProduct(text: '119', textSize: 16,),
                    ],
                  ),
                  TProductQuantityWIthAddRemoveButton(),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.all(TSizes.defaultGap),
        decoration: BoxDecoration(
          color: THelper.isDarkMode(context) ? TColors.backgroundDark : TColors.backgroundLight,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Total price:', style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.textSecondary),),
                TPriceProduct(text: '119', textColor: TColors.primaryColor, textSize: 20,),
              ],
            ),
            ElevatedButton(onPressed: () {}, style: ElevatedButton.styleFrom(padding: EdgeInsets.all(TSizes.md)), child: Text('Checkout (10)')),
          ],
        ),
      ),
    );
  }
}

