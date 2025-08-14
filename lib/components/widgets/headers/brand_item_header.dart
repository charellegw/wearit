import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/brands/brand_text.dart';
import 'package:wearit/components/widgets/products/product_element/text_product.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TBrandItemHeader extends StatelessWidget {
  const TBrandItemHeader({
    super.key, 
    required this.productName, 
    required this.brandName, 
    this.isVerified = true,
  });

  final String productName, brandName;
  final bool isVerified;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TTextProduct(
          text: productName,
          // maxLines: 2,
        ),

        const SizedBox( height: TSizes.textGap, ),

        TBrandName(brandName: brandName, isVerified: isVerified,),
      ],
    );
  }
}

