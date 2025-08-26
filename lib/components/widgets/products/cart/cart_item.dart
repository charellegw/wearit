import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/brands/brand_text.dart';
import 'package:wearit/components/widgets/images/image_thumbnail.dart';
import 'package:wearit/components/widgets/products/product_element/text_product.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TCartItem extends StatelessWidget {
  const TCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TImageThumbnail(
          imagePath: TImages.product1,
          width: 70,
          height: 70,
          padding: const EdgeInsets.all(TSizes.md),
          border: Border.all(width: 1, color: TColors.borderSecondary.withAlpha(120)),
          backgroundColor: THelper.isDarkMode(context)
              ? TColors.containerDark
              : TColors.containerLight,
        ),
        const SizedBox(width: TSizes.defaultGap,),
    
        Expanded(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TBrandName(brandName: 'New Balance'),
              Flexible(child: TTextProduct(text: 'New Balance 530')),
          
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Color ', style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.textSecondary)),
                    TextSpan(text: 'Navy ', style: Theme.of(context).textTheme.bodySmall),
                    TextSpan(text: 'Size ', style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.textSecondary)),
                    TextSpan(text: '38.5 ', style: Theme.of(context).textTheme.bodySmall),
                  ]
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}