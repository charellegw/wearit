import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: TColors.borderSecondary), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){}, 
            icon: const Image(width: TSizes.iconSm, height: TSizes.iconSm, image: AssetImage(TImages.iGoogle)),
          ),
        ),
        const SizedBox(width: TSizes.defaultGap,),
        Container(
          decoration: BoxDecoration(border: Border.all(color: TColors.borderSecondary), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: (){}, 
            icon: const Image(width: TSizes.iconSm, height: TSizes.iconSm, image: AssetImage(TImages.iFacebook)),
          ),
        ),
    
      ],
    );
  }
}