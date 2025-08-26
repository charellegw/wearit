import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/headers/section_header.dart';
import 'package:wearit/components/widgets/images/image_thumbnail.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TPaymentMethod extends StatelessWidget {
  const TPaymentMethod({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TSectionHeader(title: 'Payment Method', buttonVisible: true, buttonText: 'Change', buttonOnPressed: (){},),
        const SizedBox(height: TSizes.defaultGap,),

        Row(
          children: [
            TImageThumbnail(
              imagePath: TImages.iMastercard,
              width: 60,
              height: 50,
              backgroundColor: Colors.transparent,
              padding: const EdgeInsets.all(TSizes.md),
            ),
            const SizedBox(width: TSizes.defaultGap,),
            Text(
              'Master Card',
              style: Theme.of(context).textTheme.bodyMedium,
            ),

          ],
        )
      ],
    );
  }
}