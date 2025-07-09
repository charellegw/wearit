import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:wearit/features/auth/controllers/onboarding_controller.dart';
import 'package:wearit/features/auth/screens/onboarding/widgets/onboarding_next.dart';
import 'package:wearit/features/auth/screens/onboarding/widgets/onboarding_page.dart';
import 'package:wearit/features/auth/screens/onboarding/widgets/onboarding_dots.dart';
import 'package:wearit/features/auth/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:wearit/utils/constants/images_string.dart';
import 'package:wearit/utils/constants/text_string.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingController());
    
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnboardingPage(
                image: TImages.onboarding1,
                title: TTexts.onboardingTitle1,
                caption: TTexts.onboardingCaption1,
              ),
              OnboardingPage(
                image: TImages.onboarding2,
                title: TTexts.onboardingTitle2,
                caption: TTexts.onboardingCaption2,
              ),
              OnboardingPage(
                image: TImages.onboarding3,
                title: TTexts.onboardingTitle3,
                caption: TTexts.onboardingCaption3,
              ),
            ],
          ),
          const OnboardingSkip(),
          const OnboardingDots(),
          const OnboardingNext(),
        ],
      ),
    );
  }
}
