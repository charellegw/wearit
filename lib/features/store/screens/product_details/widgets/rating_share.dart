import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TRatingAndShare extends StatelessWidget {
  const TRatingAndShare({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            const Icon(Icons.star, color: TColors.cautionYellow, size: TSizes.iconXs,),
            const SizedBox(width: TSizes.textGap,),
            Text.rich(
              TextSpan(children: [
                TextSpan(
                    text: '4.8',
                    style: Theme.of(context).textTheme.bodySmall

                ),
                TextSpan(text: ' (2,2k)', style: Theme.of(context).textTheme.bodySmall),
              ]),
            )
          ],
        ),
    
        IconButton(onPressed: (){}, icon: Icon(Icons.share), iconSize: TSizes.iconSm,)
      ],
    );
  }
}

