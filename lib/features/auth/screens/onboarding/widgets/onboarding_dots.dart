import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wearit/features/auth/controllers/onboarding_controller.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/device/device_utils.dart';

class OnboardingDots extends StatelessWidget {
  const OnboardingDots({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingController.instance;

    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationHeight() + TSizes.md,
      left: TSizes.screenHorizontal,
      child: SmoothPageIndicator(
        controller: controller.pageController, 
        count: 3,
        effect: ExpandingDotsEffect(activeDotColor: TColors.primaryColor, dotHeight: TSizes.md, dotWidth: TSizes.md),
        onDotClicked: controller.dotNavigationClick,
      )
    );
  }
}