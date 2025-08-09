import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TextHeader extends StatelessWidget {
  const TextHeader({
    super.key, required this.headerTitle, required this.headerSubtitle,
  });

  final String headerTitle, headerSubtitle;
  
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                height: TSizes.logoSm,
                image: AssetImage(TImages.appLogo),
              ),
              const SizedBox(height: TSizes.textGap,),
              Text(
                headerTitle,
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              const SizedBox(height: TSizes.textGap,),
              Text(
                headerSubtitle,
                style: Theme.of(context).textTheme.labelLarge?.copyWith(color: TColors.textSecondary),
                selectionColor: TColors.textSecondary,
              ),
            ],
          ),
        ),
      ],
    );
  }
}