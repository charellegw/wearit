import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/containers/rounded_container.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';

class TNotificationItem extends StatelessWidget {
  const TNotificationItem({
    super.key,
    required this.timestamp, 
    this.showCheckBox = false, 
  });

  final DateTime timestamp;
  final bool showCheckBox;

  @override
  Widget build(BuildContext context) {
    return TRoundedContainer(
      padding: const EdgeInsets.all(TSizes.defaultGap),
      borderVisibility: true,
      borderColor: TColors.borderSecondary.withAlpha(120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /// Title
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(child: Text('Order Complete ejrnfek ferifje erferj i jrf fesjoif  roeef', style: Theme.of(context).textTheme.bodyMedium,)),
              if (showCheckBox) ...[
                const SizedBox(width: TSizes.defaultGap,),
                SizedBox(
                  height: 20,
                  width: 20,
                  child:  Checkbox(
                    value: false,
                    onChanged: (value) => {},
                  )
                ),
              ],
            ],
          ),
          const SizedBox(height: TSizes.textGap,),

          /// Details
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: 'Check the completeness of the product for your order with ID ', style: Theme.of(context).textTheme.bodySmall!.copyWith(color: TColors.textSecondary),),
                TextSpan(text: '[#8923f4]', style: Theme.of(context).textTheme.bodySmall!.copyWith(color: TColors.primaryColor, fontWeight: FontWeight.w600),),
                TextSpan(text: '. Satisfied with your order? Rate the product and give your feedback!', style: Theme.of(context).textTheme.bodySmall!.copyWith(color: TColors.textSecondary),),
              ]
            )
          ),
          const SizedBox(height: TSizes.defaultGap,),

          /// Date Time
          Text(
            '${timestamp.day}-${timestamp.month}-${timestamp.year} ${timestamp.hour}:${timestamp.minute}',
            style: Theme.of(context).textTheme.labelLarge!.copyWith(color: TColors.textSecondary),
          )
        ],
      ),
    );
  }
}