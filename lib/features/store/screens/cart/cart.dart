import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/components/styles/spacing_style.dart';
import 'package:wearit/components/widgets/app_bar/app_bar.dart';
import 'package:wearit/components/widgets/products/product_element/price_product.dart';
import 'package:wearit/features/store/screens/cart/widgets/cart_list.dart';
import 'package:wearit/features/store/screens/checkout/checkout.dart';
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
        child: TCartList(),
      ),
      bottomNavigationBar: Container(
        padding: TSpacingStyle.paddingDefault,
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
            ElevatedButton(
              onPressed: () => Get.to(() => const CheckoutScreen()),
              style: ElevatedButton.styleFrom( padding: EdgeInsets.all(TSizes.md)),
              child: Text('Checkout (5)')),
          ],
        ),
      ),
    );
  }
}

