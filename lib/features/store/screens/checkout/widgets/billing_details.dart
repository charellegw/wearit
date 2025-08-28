import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/products/product_element/price_product.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TBillingDetails extends StatelessWidget {
  const TBillingDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal', style: Theme.of(context).textTheme.bodyMedium,),
            TPriceProduct(text: '595.0', textSize: 14,),
          ],
        ),
        const SizedBox(height: TSizes.textGap,),

        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Shipping Fee', style: Theme.of(context).textTheme.bodyMedium,),
            TPriceProduct(text: '12.0', textSize: 12,),
          ],
        ),
        const SizedBox(height: TSizes.textGap,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Tax Fee', style: Theme.of(context).textTheme.bodyMedium,),
            TPriceProduct(text: '4.2', textSize: 12,),
          ],
        ),
        const SizedBox(height: TSizes.textGap,),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Order Total', style: Theme.of(context).textTheme.bodyMedium,),
            TPriceProduct(text: '611.2', textSize: 18,),
          ],
        ),
        const SizedBox(height: TSizes.textGap,),


      ],
    );
  }
}