import 'package:flutter/material.dart';
import 'package:wearit/components/widgets/containers/circular_container.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/helpers/helper.dart';

class TCarouselButtons extends StatelessWidget {
  const TCarouselButtons({
    super.key,
    required this.currentIndex, 
    required this.totalSlide,
  });

  final int currentIndex;
  final int totalSlide;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(TSizes.sm),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(TSizes.radiusLg),
        color: THelper.isDarkMode(context) ? Colors.black : Colors.white,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < totalSlide; i++)
            TCircularContainer(
                width: currentIndex == i ? 12 : 5,
                height: 5,
                margin: (i < totalSlide-1) ? const EdgeInsets.only(right: 5) : null,
                color: currentIndex == i
                    ? TColors.buttonPrimary
                    : TColors.buttonSecondaryDark),
        ],
      ),
    );
  }
}
