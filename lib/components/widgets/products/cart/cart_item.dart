import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/brands/brand_text.dart';
import 'package:wearit/components/widgets/images/image_thumbnail.dart';
import 'package:wearit/components/widgets/products/product_element/price_product.dart';
import 'package:wearit/components/widgets/products/product_element/text_product.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
    required this.imagePath,
    required this.productName,
    required this.brandName,
    required this.productVariant,
    required this.productPrice,
    this.productQuantity,
    this.showQuantityLabel = true,
  });

  final String imagePath, productName, brandName, productVariant;
  final double productPrice;
  final int? productQuantity;
  final bool showQuantityLabel;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            TImageThumbnail(
              imagePath: imagePath,
              width: 75,
              height: 75,
              padding: const EdgeInsets.all(TSizes.md),
              border: Border.all(width: 1, color: TColors.borderSecondary.withAlpha(120)),
              backgroundColor: THelper.isDarkMode(context)
                  ? TColors.containerDark
                  : TColors.containerLight,
            ),
            if (showQuantityLabel && productQuantity != null)
              Positioned(
                right: 5,
                top: 5,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    color: Colors.black.withAlpha(180),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    "x$productQuantity",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith( color: Colors.white, fontWeight: FontWeight.bold, ),
                  ),
                ),
              ),
          ],
        ),
        
        const SizedBox(width: TSizes.defaultGap,),

        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TBrandName(brandName: brandName),
              Flexible(child: TTextProduct(text: 'New Balance 530')),
          
              Container(
                padding: const EdgeInsets.all(TSizes.xs),
                decoration: BoxDecoration( color: Colors.grey.withAlpha(50) ),
                child: Text.rich(
                  TextSpan(
                    text: productVariant, style: Theme.of(context).textTheme.labelLarge),
                ),
              ),

              const SizedBox(height: TSizes.xs,),
    
              TPriceProduct(text: productPrice.toString(), textSize: 16,),
            ],
          ),
        )
      ],
    );
  }
}