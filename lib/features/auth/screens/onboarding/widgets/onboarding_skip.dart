import 'package:flutter/material.dart';
import 'package:wearit/features/auth/controllers/onboarding_controller.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/device/device_utils.dart';

class OnboardingSkip extends StatelessWidget {
  const OnboardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: TDeviceUtils.getAppBarHeight() + TSizes.md, 
      right: TSizes.screenHorizontal, 
      child: TextButton(
        onPressed: () => OnboardingController.instance.skipPage(), 
        style: ElevatedButton.styleFrom(foregroundColor: TColors.buttonPrimary),
        child: const Text("Skip"),
      )
    );
  }
}