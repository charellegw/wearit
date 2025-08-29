import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/brands/brand_text.dart';
import 'package:wearit/components/widgets/containers/rounded_container.dart';
import 'package:wearit/components/widgets/images/circular_image.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TBrandCard extends StatelessWidget {
  const TBrandCard({
    super.key,
    this.onTap,
  });

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    final darkMode = THelper.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
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
  }
}

