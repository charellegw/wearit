import 'package:flutter/material.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/device/device_utils.dart';

/// A Progress Indicator that shows Products Rating
/// 
/// Parameters:
///   - text: Total number of rating
///   - value: Percentage value of the rating
class TRatingProgressIndicator extends StatelessWidget {
  const TRatingProgressIndicator({
    super.key,
    required this.text,
    required this.value,
  });

  final String text;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(text, style: Theme.of(context).textTheme.bodyMedium,)
        ),
        Expanded(
          flex: 11,
          child: SizedBox(
            width: TDeviceUtils.getScreenWidth(context) * 0.8,
            child: LinearProgressIndicator(
              value: value,
              minHeight: 8,
              backgroundColor: TColors.textSecondary,
              borderRadius: BorderRadius.circular(TSizes.radiusMd),
              valueColor: const AlwaysStoppedAnimation(TColors.primaryColor),
            ),
          ),
        ),
      ],
    );
  }
}