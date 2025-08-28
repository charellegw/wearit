import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/headers/section_header.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TAddressDetails extends StatelessWidget {
  const TAddressDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TSectionHeader(title: 'Shipping Address', buttonVisible: true, buttonText: 'Change', buttonOnPressed: (){},),
        const SizedBox(height: TSizes.defaultGap,),

        Text(
          'Charelle Winarto',
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(height: TSizes.textGap,),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.phone, color: TColors.iconSecondary,),
            const SizedBox(width: TSizes.textGap,),
            Text(
              '(+62) 82192034034',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
        const SizedBox(height: TSizes.textGap,),

        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.location_pin, color: TColors.iconSecondary,),
            const SizedBox(width: TSizes.textGap,),
            Flexible(
              child: Text(
                'Jl. Ilir Raya Gg.3 no.25, Palmerah, Kec.Palmerah, 11430, Jakarta Barat, Indonesia',
                style: Theme.of(context).textTheme.bodySmall,
                softWrap: true,
              ),
            ),
          ],
        ),
      ],
    );
  }
}