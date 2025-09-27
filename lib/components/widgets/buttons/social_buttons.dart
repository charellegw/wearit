import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/features/auth/controllers/login/login_controller.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(LoginController());
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(border: Border.all(color: TColors.borderSecondary), borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () => controller.googleLogin(), 
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