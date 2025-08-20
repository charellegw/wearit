import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/brands/brand_text.dart';
import 'package:wearit/components/widgets/products/product_element/label_product.dart';
import 'package:wearit/components/widgets/products/product_element/text_product.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
// import 'package:wearit/utils/helpers/helper.dart';

class TProductMetaData extends StatelessWidget {
  const TProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    // final darkMode = THelper.isDarkMode(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            TLabelProduct(text: '-20%', backgroundColor: TColors.errorRed, borderColor: TColors.errorRed,),
            const SizedBox(height: TSizes.textGap,),
            TTextProduct(text: '\$119'),
            const SizedBox(height: TSizes.textGap,),
            TTextProduct(text: '\$142.8', isDiscountPrice: true,),
          ],
        ),
        const SizedBox(height: TSizes.sectionGap,),
        Expanded(
          child: 
        Text("helgo"),
        ),
        TBrandName(brandName: 'New Balance'),
      ],
    );
  }
}