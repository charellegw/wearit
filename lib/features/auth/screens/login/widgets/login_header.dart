import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/constants/text_string.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(
              height: TSizes.logoSm,
              image: AssetImage(TImages.appLogo),
            ),
            const SizedBox(height: TSizes.textGap,),
            Text(
              TTexts.loginTitle,
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(height: TSizes.textGap,),
            Text(
              TTexts.loginSubtitle,
              style: Theme.of(context).textTheme.bodySmall?.copyWith(color: TColors.textSecondary),
              selectionColor: TColors.textSecondary,
            ),
          ],
        ),
      ],
    );
  }
}