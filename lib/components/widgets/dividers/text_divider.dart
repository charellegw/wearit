import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TextDivider extends StatelessWidget {
  const TextDivider({
    super.key, required this.dividerText,
  });

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: TSizes.defaultGap,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Flexible(child: Divider(color: TColors.divider, thickness: 0.6, indent: 60, endIndent: 5,)),
          Text(dividerText, style: Theme.of(context).textTheme.bodySmall?.copyWith(color: TColors.textSecondary),),
          Flexible(child: Divider(color: TColors.divider, thickness: 0.6, indent: 5, endIndent: 60,)),
          const SizedBox(width: TSizes.defaultGap,),
        ],
      ),
    );
  }
}