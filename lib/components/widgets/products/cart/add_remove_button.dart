import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:wearit/components/widgets/buttons/icon_button.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TProductQuantityWIthAddRemoveButton extends StatelessWidget {
  const TProductQuantityWIthAddRemoveButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TIconButton(
          icon: Iconsax.minus,
          iconSize: TSizes.iconXs,
          width: 30,
          height: 30,
          iconColor: THelper.isDarkMode(context) ? Colors.white : Colors.black,
          backgroundColor: THelper.isDarkMode(context) ? TColors.containerDark : TColors.containerLight,
        ),
        const SizedBox(width: TSizes.defaultGap,),
    
        Text('1', style: Theme.of(context).textTheme.bodyMedium,),
        const SizedBox(width: TSizes.defaultGap,),
    
        TIconButton(
          icon: Iconsax.add,
          iconSize: TSizes.iconXs,
          width: 30,
          height: 30,
          iconColor: THelper.isDarkMode(context) ? Colors.white : Colors.black,
          backgroundColor: THelper.isDarkMode(context) ? TColors.containerDark : TColors.containerLight,
        ),
      ],
    );
  }
}

