import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/widgets/products/product_element/text_product.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TBrandName extends StatelessWidget {
  const TBrandName({
    super.key,
    required this.brandName,
    this.isVerified = true,
    this.isSmallText = true, 
    this.textColor,
  });

  final String brandName;
  final bool isVerified;
  final Color? textColor;
  final bool isSmallText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Flexible(
          child: TTextProduct(
            text: brandName,
            isSmallText: isSmallText,
            textColor: textColor,
          ),
        ),
        if (isVerified) ...[
          const SizedBox(
            width: TSizes.textGap,
          ),
          const Icon(
            Iconsax.verify5,
            color: TColors.primaryColor,
            size: TSizes.iconXs,
          ),
        ]
      ],
    );
  }
}
