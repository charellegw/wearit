import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/features/auth/controllers/onboarding_controller.dart';
import 'package:wearit/utils/constants/colors.dart';
import 'package:wearit/utils/constants/sizes.dart';
import 'package:wearit/utils/device/device_utils.dart';

class OnboardingNext extends StatelessWidget {
  const OnboardingNext({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: TDeviceUtils.getBottomNavigationHeight(),
      right: TSizes.horizontalPadding,
      child: SizedBox(
        width: TSizes.buttonWidth,
        height: TSizes.buttonHeight,
        child: Obx(() => ElevatedButton(
          onPressed: () => OnboardingController.instance.nextPage(), 
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(TSizes.xl),
            ),
            backgroundColor: TColors.buttonPrimary,
          ),
          child: Text(OnboardingController.instance.nextButtonText()),
        ),),
      ),
    );
  }
}